/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fz.ffbv3.service.hvsEstm;

/**
 *
 */
public class HvsEstmDtl {
    public String hveEstmDtlID = "";
    public String block = "";
    public double size1 = 0;
    public String taskType = "TAXA";

    public String getHveEstmDtlID() {
        return hveEstmDtlID;
    }

    public String getBlock() {
        return block;
    }

    public String getSizeString() {
        return String.valueOf(size1);
    }

    public String getTaskType() {
        return taskType;
    }
}
