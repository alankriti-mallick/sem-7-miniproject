/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
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
public class AdminView extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Integer> idlist = new ArrayList<>();
        ArrayList<String> namelist = new ArrayList<>();
        ArrayList<String> pricelist = new ArrayList<>();
        ArrayList<String> timelist = new ArrayList<>();
        
        PrintWriter out = response.getWriter();
        try{
            int n = 15;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","diptesh");
            
            System.out.println("Connection created");  
                
            
            Statement stmt = con.createStatement();
            String str = "select * from buydata";

            ResultSet rs1 = stmt.executeQuery(str);
            ResultSetMetaData c = rs1.getMetaData();
            System.out.println(c.getColumnCount());
            int i=0;
            while(rs1.next()&&i<n) {
                System.out.println(rs1.getRow());
                int b_id = rs1.getInt("b_id");
                String uname = rs1.getString("uname");
                String totalprice = rs1.getString("totalprice");
                String time = rs1.getString("b_date");
                
                idlist.add(b_id);
                namelist.add(uname);
                pricelist.add(totalprice);
                timelist.add(time);
                
                i++;
                    
            }
            HttpSession session = request.getSession();
            session.setAttribute("idlist",idlist);
            session.setAttribute("namelist",namelist);
            session.setAttribute("pricelist",pricelist);
            session.setAttribute("timelist",timelist);
            response.sendRedirect("adminview.jsp");
               
        }
        catch(Exception e1){
            e1.printStackTrace();
        }
    }

}
