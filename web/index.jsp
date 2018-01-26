<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Administratör
  Date: 2018-01-26
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <h1>Connection status</h1>

  <%
    // Create a variable for the connection string.
    String connectionUrl = "jdbc:sqlserver://localhost\\Database_PATH:1434;database=Bjornligan;IntegratedSecurity;";

    // Declare the JDBC objects.
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
      // Establish the connection.
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      con = DriverManager.getConnection(connectionUrl);
      out.println("true");


      //
      //// Create and execute an SQL statement that returns some data.
      //String SQL = "SELECT * FROM Rån";
      //stmt = con.createStatement();
      //rs = stmt.executeQuery(SQL);
      //
      //// Iterate through the data in the result set and display it.
      //while (rs.next()) {
      //System.out.println(rs.getString(4) + " " + rs.getString(6));
      //}
      //if(!con.isClosed())
      //out.println("Successfully connected to " + "MySQL server using TCP/IP...");
      //con.close();
      //

      /* Handle any errors that may have occurred. */
    }catch(SQLException ex){
      ex.printStackTrace();
      out.println("ERROR "+ex.getMessage());
    } catch(ClassNotFoundException ex)
    {
      out.println("Error " +ex.getMessage());
    }

    finally {
      if (rs != null) try { rs.close(); } catch(Exception e) {}
      if (stmt != null) try { stmt.close(); } catch(Exception e) {}
      if (con != null) try { con.close(); } catch(Exception e) {}
    }

  %>
  </body>
</html>
