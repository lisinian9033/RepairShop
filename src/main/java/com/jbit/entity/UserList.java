package com.jbit.entity;

public class UserList {
    private Integer userNo;

    private String userName;

    private String userSex;

    private String userCarno;

    private String userPhone;

    private String userMileage;

    private String userInsurance;

    private String userCarbrand;

    private String userNote;

    public Integer getUserNo() {
        return userNo;
    }

    public void setUserNo(Integer userNo) {
        this.userNo = userNo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex == null ? null : userSex.trim();
    }

    public String getUserCarno() {
        return userCarno;
    }

    public void setUserCarno(String userCarno) {
        this.userCarno = userCarno == null ? null : userCarno.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserMileage() {
        return userMileage;
    }

    public void setUserMileage(String userMileage) {
        this.userMileage = userMileage == null ? null : userMileage.trim();
    }

    public String getUserInsurance() {
        return userInsurance;
    }

    public void setUserInsurance(String userInsurance) {
        this.userInsurance = userInsurance == null ? null : userInsurance.trim();
    }

    public String getUserCarbrand() {
        return userCarbrand;
    }

    public void setUserCarbrand(String userCarbrand) {
        this.userCarbrand = userCarbrand == null ? null : userCarbrand.trim();
    }

    public String getUserNote() {
        return userNote;
    }

    public void setUserNote(String userNote) {
        this.userNote = userNote == null ? null : userNote.trim();
    }
}