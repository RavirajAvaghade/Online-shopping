package com.pack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/login")

public class LoginServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
 
         String uname=req.getParameter("uname");
         String password=req.getParameter("password");

   try
   {

     Connection con=DbConnect.getcon();

  PreparedStatement ps=con.prepareStatement("select * from userss where uname=? and password=?");
  ps.setString(1,uname);
  ps.setString(2,password);

  ResultSet rs=ps.executeQuery();

  if(rs.next())
  {

   HttpSession session=req.getSession();
   session.setAttribute("uname",uname);

   res.sendRedirect("Home.jsp");

  }
  else
  {

   res.getWriter().println("Invalid Login");

  }

   }
   catch(Exception e)
   {
      e.printStackTrace();
   }

}

}