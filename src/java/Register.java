/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.util.regex.*;    
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author diptesh
 */
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String n = request.getParameter("uname");
        String p = request.getParameter("pass");
        int e = Integer.parseInt(request.getParameter("age"));
        String c = request.getParameter("state");
        String a = request.getParameter("city");
        String b = request.getParameter("pin");
        String d = request.getParameter("phno");
        String h = request.getParameter("email");
            
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","diptesh");
            
            System.out.println("Connection created");  
                 
            PreparedStatement ps = con.prepareStatement("insert into persontable values(?,?,?,?,?,?,?,?)");

            ps.setString(1,n);
            ps.setString(2,p);
            ps.setInt(3,e);
            ps.setString(4,c);
            ps.setString(5,a);
            ps.setString(6,b);
            ps.setString(7,d);
            ps.setString(8,h);
            
            int i=ps.executeUpdate();
            if(i>0){
                HttpSession session = request.getSession();
                session.setAttribute("uname",n);
                session.setAttribute("age",e);
                session.setAttribute("state",c);
                session.setAttribute("city",a);
                session.setAttribute("pin",b);
                session.setAttribute("phno",d);
                session.setAttribute("email",h);
                response.sendRedirect("welcome.jsp");
                System.out.println("You are successfully registered...");
            }
        }
        catch(Exception e2){
            out.print(e2);
        }
        out.close();
    }

}
