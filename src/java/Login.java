/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.lang.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

/**
 *
 * @author diptesh
 */
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","diptesh");
            
            System.out.println("Connection created");  
                
            PreparedStatement ps = con.prepareStatement("select * from persontable where uname=? and pass=?");

            ps.setString(1,uname);

            ps.setString(2,pass);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {
                if (rs.getString(1).equals(uname) && rs.getString(2).equals(pass)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("uname",uname);
                    response.sendRedirect("welcome.jsp");

                } else {

                    response.sendRedirect("index.html");

                }

            }else{
                response.sendRedirect("index.html");
            }
        }
        catch(Exception e2){
            out.print(e2);
        }
        out.close();
    }


}
