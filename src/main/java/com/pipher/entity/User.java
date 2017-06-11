package com.pipher.entity;

/**
 * Created by pipher on 2017/6/11.
 */
public class User {

    private int userId;
    private String userName;
    private String password;

    public User() {
        super();
    }

    public User(String password, String userName) {
        this.password = password;
        this.userName = userName;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}
