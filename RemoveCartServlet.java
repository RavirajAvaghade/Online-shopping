package com.pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/removeCart")

public class RemoveCartServlet extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)
throws ServletException,IOException
{

try{

HttpSession session =req.getSession();

String uname=(String)session.getAttribute("uname");

String pid =req.getParameter("pid");

Connection con = DbConnect.getcon();

PreparedStatement pstmt =
con.prepareStatement("delete from cart where pid=? and uname=?");

pstmt.setString(1, pid);
pstmt.setString(2, uname);

pstmt.executeUpdate();

res.sendRedirect("ViewCart.jsp");

}catch(Exception e){
e.printStackTrace();
}

}
}