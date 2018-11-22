package com.zking.flight.util;

import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;

public class CommonAll {


    //public HttpServletResponse response = ServletActionContext.getResponse();
    public String out = "n";

    public void print(String out, HttpServletResponse response) {
        try {
            response.getWriter().print(out);
            response.getWriter().flush();
            response.getWriter().close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
