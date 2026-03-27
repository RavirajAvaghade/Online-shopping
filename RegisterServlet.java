package com.pack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet{

protected void doPost(
HttpServletRequest req,
HttpServletResponse res)

throws ServletException,IOException{

String uname=req.getParameter("uname");
String password=req.getParameter("password");

try{

Connection con=DbConnect.getcon();

PreparedStatement ps=
con.prepareStatement(
"insert into userss values(?,?)");

ps.setString(1,uname);
ps.setString(2,password);

ps.executeUpdate();

res.sendRedirect("index.jsp");

}catch(Exception e){
e.printStackTrace();
}

}

}