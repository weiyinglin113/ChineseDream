package com.user.service;

import com.user.dao.Basedao;
import com.user.entity.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userdao {
    private static String id;
    private static String pwd;

    /*插入*/
    public static int insert(user u) {
        String sql = "insert into login_user values(?,?,?,?,?)";

        Object[] params = {
                u.getUser_id(),
                u.getUser_name(),
                u.getUser_password(),
                u.getUser_sex(),
                u.getUser_phone()
        };
        return Basedao.exectuIUD(sql, params);
    }
    public static int selectBylogin(String id,String pwd) {
        int count=0;


        Connection conn =Basedao.getconn();
        PreparedStatement ps =null;
        ResultSet rs =null;

        try {
            String sql="select count(*) from login_user where User_id = ? and User_password=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,id);
            ps.setString(2,pwd);
            rs=ps.executeQuery();

            while(rs.next()) {
                count=rs.getInt(1);

            }
        } catch (SQLException e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
        }finally {
            Basedao.closeall(rs, ps, conn);
        }

        return count;

    }



}




