package db;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Midhun Krishnan K S
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class DBUtils {
    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","MIDHUN1988");
        ps=con.prepareStatement(sql);
        return ps;
    }
    public static void main(String[] args) throws ClassNotFoundException,SQLException{
        PreparedStatement ps=getPreparedStatement("select * from MALE_POPULATION");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            
        }
    }
}
