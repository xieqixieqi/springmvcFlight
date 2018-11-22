package com.zking.flight.pojo.xq;

public class F_Menu {

    private String id;
    private String mname;
    private String murl;

    public F_Menu() {
    }

    public F_Menu(String id, String mname, String murl) {
        this.id = id;
        this.mname = mname;
        this.murl = murl;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMurl() {
        return murl;
    }

    public void setMurl(String murl) {
        this.murl = murl;
    }

    @Override
    public String toString() {
        return "F_Menu{" +
                "id='" + id + '\'' +
                ", mname='" + mname + '\'' +
                ", murl='" + murl + '\'' +
                '}';
    }
}
