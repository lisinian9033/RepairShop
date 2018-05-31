package com.jbit.entity;

import java.util.Date;

public class StaffList {
    private Integer staffNo;

    private String staffName;

    private String staffSex;

    private String staffCareer;

    private String staffPhone;

    private Date staffEntrytime;

    private String staffStatus;

    
    @Override
	public String toString() {
		return "StaffList [staffNo=" + staffNo + ", staffName=" + staffName
				+ ", staffSex=" + staffSex + ", staffCareer=" + staffCareer
				+ ", staffPhone=" + staffPhone + ", staffEntrytime="
				+ staffEntrytime + ", staffStatus=" + staffStatus + "]";
	}

	public Integer getStaffNo() {
        return staffNo;
    }

    public void setStaffNo(Integer staffNo) {
        this.staffNo = staffNo;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName == null ? null : staffName.trim();
    }

    public String getStaffSex() {
        return staffSex;
    }

    public void setStaffSex(String staffSex) {
        this.staffSex = staffSex == null ? null : staffSex.trim();
    }

    public String getStaffCareer() {
        return staffCareer;
    }

    public void setStaffCareer(String staffCareer) {
        this.staffCareer = staffCareer == null ? null : staffCareer.trim();
    }

    public String getStaffPhone() {
        return staffPhone;
    }

    public void setStaffPhone(String staffPhone) {
        this.staffPhone = staffPhone == null ? null : staffPhone.trim();
    }

    public Date getStaffEntrytime() {
        return staffEntrytime;
    }

    public void setStaffEntrytime(Date staffEntrytime) {
        this.staffEntrytime = staffEntrytime;
    }

    public String getStaffStatus() {
        return staffStatus;
    }

    public void setStaffStatus(String staffStatus) {
        this.staffStatus = staffStatus;
    }
}