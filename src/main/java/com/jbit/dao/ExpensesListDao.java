package com.jbit.dao;

import com.jbit.entity.ExpensesList;

public interface ExpensesListDao {
    ExpensesList selectByPrimaryKey(Integer expensesNo);
}