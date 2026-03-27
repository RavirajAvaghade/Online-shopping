package com.pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/addcart")
public class AddCartServlet extends HttpServlet {

protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {

HttpSession session = req.getSession();

String uname = (String) session.getAttribute("uname");
String pid = req.getParameter("pid");

try{

Connection con = DbConnect.getcon();

PreparedStatement ps = con.prepareStatement(
"insert into cart(uname,pid) values(?,?)");

ps.setString(1, uname);
ps.setString(2, pid);

ps.executeUpdate();

res.sendRedirect("cart.jsp");

}catch(Exception e){
e.printStackTrace();
}

}

}