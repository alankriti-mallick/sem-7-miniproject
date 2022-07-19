/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dipte
 */
public class Cart extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Integer> idlist = new ArrayList<>();
        ArrayList<String> namelist = new ArrayList<>();
        ArrayList<String> pricelist = new ArrayList<>();
        ArrayList<String> productcategorylist = new ArrayList<>();
        
        PrintWriter out = response.getWriter();
        String uname = request.getParameter("uname");
        try{
            int n = 15;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","diptesh");
            
            System.out.println("Connection created");  
                
            PreparedStatement ps1 = con.prepareStatement("select * from cartdata where uname=?");

            System.out.println(uname);
            ps1.setString(1,uname);

            ResultSet rs1 = ps1.executeQuery();
            ResultSetMetaData c = rs1.getMetaData();
            System.out.println(c.getColumnCount());
            if(rs1==null){
                System.out.println("null rs1");
            }
            int i=0;
            while(rs1.next()&&i<n) {
                System.out.println(rs1.getRow());
                int c_id = rs1.getInt("c_id");
                String name = rs1.getString("name");
                String price = rs1.getString("price");
                String productcategory = rs1.getString("productcategory");
                
                idlist.add(c_id);
                namelist.add(name);
                pricelist.add(price);
                productcategorylist.add(productcategory);
                
                i++;
                    
            }
            HttpSession session = request.getSession();
            session.setAttribute("idlist",idlist);
            session.setAttribute("namelist",namelist);
            session.setAttribute("pricelist",pricelist);
            session.setAttribute("productcategorylist",productcategorylist);
            response.sendRedirect("cartdata.jsp");
               
        }
        catch(Exception e1){
            e1.printStackTrace();
        }
    }

}
