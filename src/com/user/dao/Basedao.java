package com.user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Basedao {
    static String URL = "jdbc:mysql://localhost:3306/user_database?&serverTimezone=GMT%2B8&useSSL=false";
    static String USER = "root";
    static String PASSWORD = "326800";
    static Connection conn=null;
    public static final String DRIVER="com.mysql.cj.jdbc.Driver";

    public static Connection getconn() {
        Connection conn = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL,USER,PASSWORD);

        } catch (Exception e) {

            e.printStackTrace();
        }
        return conn;

    }
    public static int exectuIUD(String sql,Object []params) {
        int count =0;
        Connection conn =Basedao.getconn();
        PreparedStatement ps =null;

        //insert into user('''''','')value(?,?,?)
        try {
            //准备sql
            ps=conn.prepareStatement(sql);

            for(int i=0;i<params.length;i++) {
                ps.setObject(i+1, params[i]);
            }
            count=ps.executeUpdate();
        } catch (SQLException e) {

            e.printStackTrace();
        }finally {
            Basedao.closeall(null, ps, conn);
        }
        return count;
    }
    public static void closeall(ResultSet rs,PreparedStatement ps,Connection conn) {

        try {
            if(rs!=null)
                rs.close();
            if(ps!=null)
                ps.close();
            if(conn!=null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}

//public class Basedao {
//    public static Connection getMysqlConnection() throws SQLException {
//
//        String DBDRIVER = "com.mysql.cj.jdbc.Driver";
//
//        String url = "jdbc:mysql://localhost/user_database";
//
//        try {
//
//            Class.forName(DBDRIVER);
//
//        } catch (ClassNotFoundException ex) {
//
//            ex.printStackTrace();
//
//        }
//
//        return DriverManager.getConnection(url, "root", "326800s");//这里root为用户名，password为你的登录密码:)
//
//    }
//}