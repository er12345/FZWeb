/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fz.ffbv3.service.hvsEstm;

import com.fz.generic.Db;
import com.fz.util.FZUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 */
public class HvsEstmDAO {
    
    public HvsEstm loadByID(String hvsEstmID) 
            throws Exception {
        
        HvsEstm he = null;
        
        String sql = "select date_format(hvsDt, '%Y-%m-%d')"
                + ", divID"
                + ", hvsEstmID"
                + ", status"
                + " from fbHvsEstm"
                + " where hvsEstmID = ?";

        try (Connection con = (new Db()).getConnection("jdbc/fz");){

            try (PreparedStatement ps = con.prepareStatement(sql)){

                // query hvsEstm
                int iHvsEstmID = Integer.parseInt(hvsEstmID);
                ps.setInt(1, iHvsEstmID);
                he = loadSelfAndChildren(con, ps);
            }
        }
        return he;
    }
    
    public HvsEstm loadByDateAndDiv(String hvsDate, String divID) 
            throws Exception {
        
        HvsEstm he = null;
        
        String sql = "select date_format(hvsDt, '%Y-%m-%d')"
                + ", divID"
                + ", hvsEstmID"
                + ", status"
                + " from fbHvsEstm"
                + " where hvsDt = ?"
                + " and divID = ?"
                ;

        try (Connection con = (new Db()).getConnection("jdbc/fz");){

            try (PreparedStatement ps = con.prepareStatement(sql)){

                // query hvsEstm
                ps.setString(1, hvsDate);
                ps.setString(2, divID);
                he = loadSelfAndChildren(con, ps);

            }
        }
        return he;
    }
    
    private HvsEstm loadSelfAndChildren(
            Connection con, PreparedStatement psLoader
    ) 
            throws Exception {
        
        HvsEstm he = null;
        try (ResultSet rs = psLoader.executeQuery()){

            // if has record
            if (rs.next()){

                he = new HvsEstm();
                he.hvsDate = FZUtil.toDateString(
                                rs.getDate(1),"yyyy-MM-dd");
                he.divID = rs.getString(2);
                he.hvsEstmID = rs.getString(3);
                he.status = rs.getString(4);

                // get the details
                loadChildren(he, con);
            }
            else { // else, no record
                // nothing
            }
        }
        return he;
    }
    
    private void loadChildren(HvsEstm he
            , Connection con
    ) 
            throws Exception {
        
        // prepare query
        String sql = "select hvsEstmDtlID"
                + "\n, taskType"
                + "\n, block"
                + "\n, size1"
                + "\n from fbHvsEstmDtl"
                + "\n where hvsEstmID = ?"
                + "\n order by estmSeq";
        
        try (PreparedStatement ps = con.prepareStatement(sql)){
            
            // query
            ps.setInt(1, Integer.parseInt(he.hvsEstmID));
            try(ResultSet rs = ps.executeQuery()){
                
                // for each record
                while (rs.next()){
                    
                    // populate object with database data
                    HvsEstmDtl hed = new HvsEstmDtl();
                    hed.hveEstmDtlID = rs.getString(1);
                    hed.taskType = rs.getString(2);
                    hed.block = rs.getString(3);
                    hed.size1 = rs.getDouble(4);
                    
                    // add to list
                    he.dtl.add(hed);
                }
                
            }
        }
    }
    
    public void save(HvsEstm heEntered) throws Exception {

        HvsEstm heExist = this.loadByDateAndDiv(heEntered.hvsDate
                , heEntered.divID);

        // if not exist, add
        if (heExist == null){
            add(heEntered);
        }
        else { // else, update
            
            // if already final, cannot
            if (heExist.status.equals("FNAL")){
                throw new Exception("Already final, cannot save again.");
            }
            else {
                // else, not final
                heEntered.hvsEstmID = heExist.hvsEstmID;
                update(heEntered);
            }
        }
            
    }
    private void add(HvsEstm he) throws Exception {
        
        // open db connection and 1 statement to insert header
        String sql = "insert into fbHvsEstm(hvsDt, status, divID, createdBy)"
                + " values(?,?,?,?)";
        try (
            Connection con = (new Db()).getConnection("jdbc/fz");
            PreparedStatement psHdr = con.prepareStatement(sql
                    , Statement.RETURN_GENERATED_KEYS);
            )  {

            // start database transaction,
            // insert header to db
            psHdr.setDate(1, java.sql.Date.valueOf(he.hvsDate));
            psHdr.setString(2, he.status);
            psHdr.setString(3, he.divID);
            psHdr.setString(4, "");
            
            // transaction needed because we have several sql 
            con.setAutoCommit(false);

            psHdr.executeUpdate();

            // get generated auto increment key from db
            int key = -1;
            try (ResultSet rs = psHdr.getGeneratedKeys()){
                rs.next();
                he.hvsEstmID = rs.getString(1);
            }

            insertNewChildren(he, con);
            
            // commit transaction
            con.setAutoCommit(true);

        }
    }

    private void update(HvsEstm he) throws Exception {
        
        // open db connection and 1 statement to insert header
        String sql = "update fbHvsEstm set status = ?"
                + " where hvsDt = ?"
                + " and divID = ?"
                ;
        try (
            Connection con = (new Db()).getConnection("jdbc/fz");
            PreparedStatement psHdr = con.prepareStatement(sql);
            )  {

            // insert header to db
            psHdr.setString(1, he.status);
            psHdr.setDate(2, java.sql.Date.valueOf(he.hvsDate));
            psHdr.setString(3, he.divID);
            
            // start database transaction,
            // transaction needed because we have several sql 
            con.setAutoCommit(false);

            psHdr.executeUpdate();

            deleteOldChildren(he, con);
            insertNewChildren(he, con);

            // commit transaction
            con.setAutoCommit(true);

        }
    }

    private void deleteOldChildren(HvsEstm he, Connection con) 
    throws Exception {
        String sql = "delete from fbHvsEstmDtl"
                + " where hvsEstmID = ?";
        try(PreparedStatement ps = con.prepareStatement(sql)){
            ps.setInt(1, Integer.parseInt(he.hvsEstmID));
            ps.executeUpdate();
        }
    }

    private void insertNewChildren(HvsEstm he, Connection con) 
        throws Exception {
        
        // create child sql
        String sql = "insert into fbHvsEstmDtl"
                + "(taskType, block, size1, hvsEstmID)"
                + " values(?,?,?,?)";
        try(PreparedStatement ps = con.prepareStatement(sql)){

            // insert each rows
            for (HvsEstmDtl hed : he.dtl){

                // set the values
                ps.clearParameters();
                ps.setString(1, hed.taskType); // type
                ps.setString(2, hed.block); // blocks
                ps.setDouble(3, hed.size1); // kg
                ps.setInt(4, Integer.parseInt(he.hvsEstmID)); // parent

                // add to sql batch
                ps.addBatch();

            }

            // execute sql batch
            ps.clearParameters();
            int[] results = ps.executeBatch();
            System.out.println("");
        }
    }

    public List<HvsEstm> find(String harvestDate, String divID) 
            throws Exception {
        
        List<HvsEstm> heList = null;
        
        // construct query
        String divIDCriteria = "";
        if (divID.length() > 0){
            divIDCriteria = " and a.divID like ?";
        }
        String sql = "select date_format(a.hvsDt, '%Y-%m-%d')"
                + "\n, a.status, a.divID"
                + "\n, a.hvsEstmID"
                + "\n, sum(b.size1) kg "
                + "\n from fbHvsEstm a"
                + "\n inner join fbHvsEstmDtl b"
                + "\n     on a.hvsEstmID = b.hvsEstmID"
                + "\n where a.hvsDt = ?" 
                + "\n " + divIDCriteria
                + "\n group by a.hvsDt, a.status, a.divID"
                + "\n   , a.hvsEstmID" 
                ;
        
        // prepare sql db con & sql statement
        try (
                Connection con = (new Db()).getConnection("jdbc/fz");
                PreparedStatement ps = con.prepareStatement(sql);
                ){
            
            // set the sql params
            ps.setDate(1, java.sql.Date.valueOf(harvestDate));
            if (divIDCriteria.length() > 0){
                ps.setString(2, divID + "%");
            }
            
            // query
            try (ResultSet rs = ps.executeQuery()){
                
                // prepare list object for the page
                heList = new ArrayList<HvsEstm>();
                
                // for each record
                while(rs.next()){
                    
                    // populate the object
                    HvsEstm he = new HvsEstm();
                    he.hvsDate = rs.getString(1);
                    he.status = rs.getString(2);
                    he.divID = rs.getString(3);
                    he.hvsEstmID = rs.getString(4);
                    he.kg = rs.getDouble(5);
                    
                    // add to list
                    heList.add(he);
                }
                
            }
        }
        return heList;
    }
}
