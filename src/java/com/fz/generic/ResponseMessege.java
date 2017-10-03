/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fz.generic;

import com.fz.ffbv3.service.reasonmgt.ReasonHolder;
import com.fz.ffbv3.service.reasonmgt.ReasonModule;
import com.fz.ffbv3.service.taskmgt.TaskPlanHolder;
import com.fz.ffbv3.service.taskmgt.TaskPlanModule;
import com.fz.ffbv3.service.usermgt.UserModule;
import com.fz.ffbv3.service.usermgt.UserHolder;
import com.fz.util.FixValue;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

/**
 *
 * @author Agustinus Ignat
 */
public class ResponseMessege
{
  CoreModule coreRsp = new CoreModule();
	private Statement st;
  private String strQuery;

  UserHolder userHolder;
  UserModule userRsp;

  ReasonModule reasonRsp;
  ReasonHolder reasonHolder;

  TaskPlanModule taskPlanModule;
  TaskPlanHolder taskPlanHolder;
	Gson gson;

  public String CoreMsgResponse(Integer Code, String Msg)
  {
    coreRsp = new CoreModule();    
    coreRsp.setCode(Code);
    coreRsp.setMsg(Msg);

    userHolder = new UserHolder(coreRsp, null);
    
    gson = new GsonBuilder().setPrettyPrinting().create(); 
  	return gson.toJson(userHolder);
  }  
  
  private void UpdateTaskByTaskID(Integer mTaskID, Connection conn)
  {
    strQuery = "UPDATE fbtask2 SET takenDt=CURRENT_TIMESTAMP() WHERE TaskID=" + mTaskID;

    try
    {
      st = conn.createStatement();
  	  st.execute(strQuery);
    }
    catch (SQLException ex)
    {
      System.out.println(ex.getMessage());
    }
  }
  
  public String LoginMsgResponse(Integer Code, String Msg, ResultSet res, Integer rows) throws SQLException
  {
    coreRsp = new CoreModule();    
    coreRsp.setCode(Code);
    coreRsp.setMsg(Msg);

    userRsp = new UserModule();
  
    for(int i=0; i<rows; i++)
    {      
      userRsp.setUserID(res.getInt("UserID"));
      userRsp.setName(res.getString("Name"));
      userRsp.setPhone(res.getString("Phone"));
      userRsp.setLnkRoleID(res.getInt("lnkRoleID"));
      userRsp.setBrand(res.getString("Brand"));
      userRsp.setType(res.getString("Type"));
      userRsp.setVehicleID(res.getInt("VehicleID"));
      userRsp.setVehicleName(res.getString("VehicleName"));
      userRsp.setTimeTrackLocation(FixValue.intTrackingTimeout);
    }
    
    userHolder = new UserHolder(coreRsp, userRsp);
    
    res.close();
    gson = new GsonBuilder().setPrettyPrinting().create(); 
  	return gson.toJson(userHolder);
  }
  
   public String TaskListMsgResponse(Connection conn, Integer Code, String Msg, ResultSet res, Integer rows) throws SQLException
  {
    coreRsp = new CoreModule();    
    coreRsp.setCode(Code);
    coreRsp.setMsg(Msg);

    List<TaskPlanModule> TaskListResponse = new ArrayList<>();
    res.first();
  
    for(int i=0; i<rows; i++)
    {      
      taskPlanModule = new TaskPlanModule();
      taskPlanModule.setBlocks(res.getString("Blocks"));
      taskPlanModule.setDivID(res.getString("divID"));
      taskPlanModule.setEnd(res.getString("End"));
      taskPlanModule.setFrom(res.getString("From"));
      taskPlanModule.setJobID(res.getInt("JobID"));
      taskPlanModule.setStart(res.getString("Start"));
      taskPlanModule.setTaskID(res.getInt("TaskID"));
      taskPlanModule.setTo(res.getString("To"));
      taskPlanModule.setTonnage(res.getString("Tonnage"));
      TaskListResponse.add(taskPlanModule);

      UpdateTaskByTaskID(res.getInt("TaskID"), conn);
      res.next();
    }
    
    taskPlanHolder = new TaskPlanHolder(coreRsp, TaskListResponse);
    
    res.close();
    gson = new GsonBuilder().setPrettyPrinting().create(); 
  	return gson.toJson(taskPlanHolder);
  }

  public String ReasonMsgResponse(Integer Code, String Msg, ResultSet res, Integer rows) throws SQLException
  {
    coreRsp = new CoreModule();    
    coreRsp.setCode(Code);
    coreRsp.setMsg(Msg);

    List<ReasonModule> ReasonResponse = new ArrayList<>();
    res.first();
    
    for(int i=0; i<rows; i++)
    {      
      reasonRsp = new ReasonModule();
      reasonRsp.setReasonID(res.getInt("ReasonID"));
      reasonRsp.setReasonName(res.getString("ReasonName"));
      reasonRsp.setReasonDesc(res.getString("ReasonDesc"));
      
      ReasonResponse.add(reasonRsp);
      res.next();
    }
    
    reasonHolder = new ReasonHolder(coreRsp, ReasonResponse);
    
    res.close();
    gson = new GsonBuilder().setPrettyPrinting().create(); 
  	return gson.toJson(reasonHolder);
  }

  public static String resultSetToJson(Connection connection, String query)
  {
    List<Map<String, Object>> listOfMaps = null;
    Map<String, Object> Mapsa = null;
    
    try
    {
      QueryRunner queryRunner = new QueryRunner();
      listOfMaps = queryRunner.query(connection, query, new MapListHandler());
    }
    catch (SQLException se)
    {
      throw new RuntimeException("Couldn't query the database.", se);
    } 

    return new Gson().toJson(listOfMaps);
  }
}