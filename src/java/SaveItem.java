/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.util.Date;
import java.time.*;
import java.sql.*;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dipte
 */
public class SaveItem extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String totalprice = request.getParameter("totalprice");
        String uname = request.getParameter("uname");
        Date date = new Date();
        String b_date = date.toString();
        int b_id = 1;
        
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","diptesh");
            
            System.out.println("Connection created");  
                 
            PreparedStatement ps = con.prepareStatement("insert into buydata values(?,?,?,?)");

            ps.setInt(1,b_id);
            ps.setString(2,uname);
            ps.setString(3,totalprice);
            ps.setString(4,b_date);
            
            int i=ps.executeUpdate();
            if(i>0){
               RequestDispatcher rq = request.getRequestDispatcher("DeleteItem");
                rq.forward(request, response);
            }
        }
        catch(Exception e2){
            out.print(e2);
        }
    }

}
