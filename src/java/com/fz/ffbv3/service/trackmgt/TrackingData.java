/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fz.ffbv3.service.trackmgt;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/**
 *
 * @author Agustinus Ignat
 */
public class TrackingData
{
  @SerializedName("Latitude")
  @Expose
  private Integer Latitude;
  @SerializedName("Longitude")
  @Expose
  private Integer Longitude;
  @SerializedName("EndDate")
  @Expose
  private Integer EndDate;
  @SerializedName("UserID")
  @Expose
  private Integer UserID;
  @SerializedName("VehicleID")
  @Expose
  private Integer VehicleID;

	public
	Integer getLatitude()
	{
		return Latitude;
	}

	public
	void setLatitude(Integer Latitude)
	{
		this.Latitude = Latitude;
	}

	public
	Integer getLongitude()
	{
		return Longitude;
	}

	public
	void setLongitude(Integer Longitude)
	{
		this.Longitude = Longitude;
	}

	public
	Integer getEndDate()
	{
		return EndDate;
	}

	public
	void setEndDate(Integer EndDate)
	{
		this.EndDate = EndDate;
	}

	public
	Integer getUserID()
	{
		return UserID;
	}

	public
	void setUserID(Integer UserID)
	{
		this.UserID = UserID;
	}

	public
	Integer getVehicleID()
	{
		return VehicleID;
	}

	public
	void setVehicleID(Integer VehicleID)
	{
		this.VehicleID = VehicleID;
	}
}
