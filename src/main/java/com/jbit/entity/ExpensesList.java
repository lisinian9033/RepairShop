package com.jbit.entity;

public class ExpensesList {
    private Integer expensesNo;

    private String expensesName;

    private Integer expensesQuantity;

    public Integer getExpensesNo() {
        return expensesNo;
    }

    public void setExpensesNo(Integer expensesNo) {
        this.expensesNo = expensesNo;
    }

    public String getExpensesName() {
        return expensesName;
    }

    public void setExpensesName(String expensesName) {
        this.expensesName = expensesName == null ? null : expensesName.trim();
    }

    public Integer getExpensesQuantity() {
        return expensesQuantity;
    }

    public void setExpensesQuantity(Integer expensesQuantity) {
        this.expensesQuantity = expensesQuantity;
    }
}