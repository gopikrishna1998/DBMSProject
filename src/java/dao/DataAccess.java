/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import db.DBUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Male_Population;
/**
 *
 * @author Midhun Krishnan K S
 */
public class DataAccess {
    public void addNew(Male_Population mp)
    {
        try {
            PreparedStatement ps =DBUtils.getPreparedStatement("insert into MALE_POPULATION values(?,?,?)");
            ps.setString(1, mp.getState_ut_name());
            ps.setString(2, mp.getY_2001());
            ps.setString(3, mp.getY_2011());
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Male_Population> getAll()
    {
        List<Male_Population> ms = new LinkedList();
        try {
            
            ResultSet rs=DBUtils.getPreparedStatement("select * from MALE_POPULATION").executeQuery();
            while(rs.next())
            {
                Male_Population mp = new Male_Population(rs.getString(1), rs.getString(2), rs.getString(3));
                ms.add(mp);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ms;
    }
    
    public static List<Male_Population> getbyName(String state_ut_name)
    {
        List<Male_Population> ms = new LinkedList();
        String sql = "select * from male_population where state_ut_name=?";
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setString(1, state_ut_name);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                Male_Population mp = new Male_Population(rs.getString(1), rs.getString(2), rs.getString(3));
                ms.add(mp);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ms;
    }
    
    public void edit(String state_ut_name,String y_2001,String y_2011)
    {
        try {
            String sql = "update male_population set y_2001=?,y_2011=?"+"where state_ut_name=?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setString(1, y_2001);
            ps.setString(2, y_2011);
            ps.setString(3, state_ut_name);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void delete(String state_ut_name)
    {
        String sql = "delete from male_population where state_ut_name = ?";
        PreparedStatement ps;
        try {
            ps = DBUtils.getPreparedStatement(sql);
            ps.setString(1, state_ut_name);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}

