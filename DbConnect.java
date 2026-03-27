package com.pack;

import java.sql.*;

public class DbConnect {

static Connection con;

static{

try{

Class.forName(Dbinfo.driver);
con=DriverManager.getConnection(
Dbinfo.url,Dbinfo.uname,Dbinfo.pwd);

}catch(Exception e){
e.printStackTrace();
}

}

public static Connection getcon(){
return con;
}

}