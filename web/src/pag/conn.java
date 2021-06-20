package pag;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.*;
import java.io.*;

public class conn
{

    private String url = "jdbc:mysql://localhost:3306/lastweb";  //根据自己的情况修改mysql数据库ip和端口，mysql是数据库上存在的一个库
    private String username = "root";   //登录账号
    private String password = "123456";  //登录密码
    private  Statement stmt = null;
    private  ResultSet rs = null;
    private Connection con=null;

    private static boolean existence=false;         //是否已登陆
    private static boolean login_judge=false;       //用来表示是否是从login_user页面过去的
    private static boolean repeat=false;          //用来表示是否已注册

    private static String numsname="我";

    public boolean getexistence()
    {
        return existence;
    }

    public boolean getrepeat()
    {
        return repeat;
    }

    public boolean getlogin_judge()
    {
        return login_judge;
    }

    public void setexistence(String con)
    {
        if(con=="true") existence=true;
        else if(con=="false") existence=false;
    }

    public void setrepeat(String con)
    {
        if(con=="true") repeat=true;
        else if(con=="false") repeat=false;
    }

    public void setlogin_judge(String con)
    {
        if(con=="true") login_judge=true;
        else if(con=="false") login_judge=false;
    }

    public void connect()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
            con = DriverManager.getConnection(url, username, password);
        } catch (Exception throwable) {};
    }

    public ResultSet getRs(String que) throws SQLException
    {
        stmt = con.createStatement();
        rs = stmt.executeQuery(que);
        return rs;
    }

    public void addcart(String id,String name,String price) throws SQLException
    {
        String sent="insert into cart values('"+id+"','"+name+"','"+price+"',"+"'1') ON DUPLICATE KEY UPDATE Cartnums=Cartnums+1";
        stmt = con.createStatement();
        stmt.execute(sent);
    }

    public void deletecart(String id) throws SQLException
    {
        String sent="delete from cart where Cartid="+id;
        stmt = con.createStatement();
        stmt.execute(sent);
    }

    public void adduser(String nums,String name,String password) throws SQLException
    {
        String sent="insert into user values('"+nums+"','"+name+"','"+password+"')";
        stmt = con.createStatement();
        stmt.execute(sent);
    }

    public void setnumsname(String nums) throws SQLException
    {
        if(nums=="") {
            numsname="我";
        }
        else {
            String sent = "select *from user where nums=" + nums;
            stmt = con.createStatement();
            rs = stmt.executeQuery(sent);
            while (rs.next()){
                numsname=rs.getString("name");
            }
        }
    }

    public String getnumsname() throws SQLException
    {
        return numsname;
    }
}
