package com.jbit.dao;

import java.util.List;

import com.jbit.entity.ExpensesList;

public interface ExpensesListDao {
    ExpensesList selectByPrimaryKey(Integer expensesNo);
    
    /**
     * 显示消耗品
     */
    List<ExpensesList> getExpensesList();
}