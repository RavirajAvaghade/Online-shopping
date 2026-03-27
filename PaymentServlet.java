package com.pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {

protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {

HttpSession session = req.getSession();

String uname = (String) session.getAttribute("uname");

if(uname == null){
res.sendRedirect("login.jsp");
return;
}

try{

Connection con = DbConnect.getcon();

/* Get cart products */

PreparedStatement ps1 = con.prepareStatement(
"select p.pid,p.pprice from productsss p, cart c where p.pid=c.pid and c.uname=?");

ps1.setString(1, uname);

ResultSet rs = ps1.executeQuery();

/* Insert into orders table */

while(rs.next()){

PreparedStatement ps2 = con.prepareStatement(
"insert into orderss(order_id,custid,pid,quantity,total_amount,order_date) values(?,?,?,?,?,sysdate)");

ps2.setString(1, "ORD"+System.currentTimeMillis());
ps2.setString(2, uname);
ps2.setString(3, rs.getString("pid"));
ps2.setInt(4, 1);
ps2.setInt(5, rs.getInt("pprice"));

ps2.executeUpdate();

}

/* Clear cart after payment */

PreparedStatement ps3 = con.prepareStatement(
"delete from cart where uname=?");

ps3.setString(1, uname);

ps3.executeUpdate();

/* Redirect to thankyou page */

res.sendRedirect("thankyou.jsp");

}catch(Exception e){

e.printStackTrace();
res.sendRedirect("payment.jsp?msg=error");

}

}

}