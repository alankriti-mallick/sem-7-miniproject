/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dipte
 */
public class Product extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String img = request.getParameter("img");
        String name = null;
        String price = null;
        String discount=null;
        String productcategory=null;
        String details = null;
        ResultSet rs1 = null;
        
        String p_id = request.getParameter("p_id");
        PreparedStatement ps1 = null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","diptesh");
            
            System.out.println("Connection created");  
                
            ps1 = con.prepareStatement("select * from tblproduct where p_id=?");

            System.out.println(p_id);
            ps1.setString(1,p_id);

            rs1 = ps1.executeQuery();
            ResultSetMetaData c = rs1.getMetaData();
            System.out.println(c.getColumnCount());
            if(rs1==null){
                System.out.println("null rs1");
            }
            if(rs1.next()) {
                System.out.println(rs1.getRow());
                name = rs1.getString("name");
                price = rs1.getString("price");
                discount = rs1.getString("discount");
                productcategory = rs1.getString("productcategory");
                details = rs1.getString("details");
                    
                HttpSession session = request.getSession();
                session.setAttribute("name",name);
                session.setAttribute("price",price);
                session.setAttribute("discount", discount);
                session.setAttribute("productcategory",productcategory);
                session.setAttribute("details",details);
                session.setAttribute("img", img);
                session.setAttribute("p_id",p_id);
                response.sendRedirect("product.jsp?p_id="+p_id);
                
                System.out.println(name+" "+price+" "+discount+" "+productcategory);

            }else{
                HttpSession session = request.getSession();
                session.setAttribute("img", img);
                response.sendRedirect("product.jsp?p_id="+p_id);
            }
            
        }
        catch(Exception e1){
            e1.printStackTrace();
        }
    }

}
