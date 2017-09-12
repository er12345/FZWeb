/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fz.ffbv3.service.exampleService1;

import com.fz.generic.Db;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 */
public class ExampleService1 {

    /**
     * Creates a new instance of ExampleService1
     */
    
    String output = "";

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }
    
    public ExampleService1() throws Exception {
        Db db = new Db();
        Connection con = db.getConnection("jdbc/fz");
        ResultSet rs = con.createStatement().executeQuery("select 1+1");
        if (rs.next())
            this.output = rs.getString(1);
        rs.close();
        con.close();
    }
    
}
