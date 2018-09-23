/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Midhun Krishnan K S
 */
public class Male_Population {
    private String state_ut_name;
    private String y_2001;
    private String y_2011;

    public String getState_ut_name() {
        return state_ut_name;
    }

    public void setState_ut_name(String state_ut_name) {
        this.state_ut_name = state_ut_name;
    }

    public String getY_2001() {
        return y_2001;
    }

    public void setY_2001(String y_2001) {
        this.y_2001 = y_2001;
    }

    public String getY_2011() {
        return y_2011;
    }

    public void setY_2011(String y_2011) {
        this.y_2011 = y_2011;
    }

    public Male_Population(String state_ut_name, String y_2001, String y_2011) {
        this.state_ut_name = state_ut_name;
        this.y_2001 = y_2001;
        this.y_2011 = y_2011;
    }
    
}
