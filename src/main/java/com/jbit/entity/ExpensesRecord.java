package com.jbit.entity;

import java.util.Date;

public class ExpensesRecord {
    private Integer erno;

    private Integer expensesNo;

    private String expensesName;
    
    private Integer expensesRecordstatus;

    private Integer expensesRecordnum;

    private Date expensesRecordtime;

    
    
    public String getExpensesName() {
		return expensesName;
	}

    public void setExpensesName(String expensesName) {
        this.expensesName = expensesName == null ? null : expensesName.trim();
    }

	public Integer getErno() {
        return erno;
    }

    public void setErno(Integer erno) {
        this.erno = erno;
    }

    public Integer getExpensesNo() {
        return expensesNo;
    }

    public void setExpensesNo(Integer expensesNo) {
        this.expensesNo = expensesNo;
    }

    public Integer getExpensesRecordstatus() {
        return expensesRecordstatus;
    }

    public void setExpensesRecordstatus(Integer expensesRecordstatus) {
        this.expensesRecordstatus = expensesRecordstatus;
    }

    public Integer getExpensesRecordnum() {
        return expensesRecordnum;
    }

    public void setExpensesRecordnum(Integer expensesRecordnum) {
        this.expensesRecordnum = expensesRecordnum;
    }

    public Date getExpensesRecordtime() {
        return expensesRecordtime;
    }

    public void setExpensesRecordtime(Date expensesRecordtime) {
        this.expensesRecordtime = expensesRecordtime;
    }
}