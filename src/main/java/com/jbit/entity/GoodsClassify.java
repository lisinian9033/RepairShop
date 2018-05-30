package com.jbit.entity;

public class GoodsClassify {
    private Integer classifyNo;

    private String classifyName;

    public Integer getClassifyNo() {
        return classifyNo;
    }

    public void setClassifyNo(Integer classifyNo) {
        this.classifyNo = classifyNo;
    }

    public String getClassifyName() {
        return classifyName;
    }

    public void setClassifyName(String classifyName) {
        this.classifyName = classifyName == null ? null : classifyName.trim();
    }
}