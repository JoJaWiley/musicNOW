
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thank You</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
                <%@ page import="java.sql.*" %>
        <%
            //initialize the variables for the database url, username and password
            String url = "jdbc:mysql://localhost:3306/kgatlw";
            String dbusername = "root";
            String dbpassword = "admin";
            
            //get the username and password that the user entered in the form
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            
            //create the connection to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, dbusername, dbpassword);
            
            //Create the statement
            PreparedStatement statement = connection.prepareStatement("INSERT INTO fanclub (firstname, lastname, email) VALUES (?,?,?);");
            statement.setString(1, firstname);
            statement.setString(2, lastname);
            statement.setString(3, email);
            
            statement.executeUpdate();
            
            //close the database connection
            connection.close();
        %>
        <div class="d-flex justify-content-center position-relative">
            <h1>Thank You!</h1>
        </div>
        <div class="d-flex justify-content-center position-relative">
            <p>Thanks, <%=firstname%> <%=lastname%>, for joining our fan club!</p>
        </div>
        <div class="d-flex justify-content-center position-relative">
                <a href='index.jsp' class="btn btn-primary" style='width: 200px; transform: translate(-20%, 0%)'>Home</a>
                <a href='discography.jsp' class="btn btn-primary" style='width: 200px; transform: translate(+20%, 0%)'>Discography</a>
        </div>
    </body>
</html>
