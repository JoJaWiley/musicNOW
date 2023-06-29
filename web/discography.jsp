<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discography</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <style>
            .grid-container {
                display: grid;
                grid-template-columns: repeat(3, 1fr); /*create three equal width columns */
                grid-gap: 15px; /*add a 10px gap between each grid item*/
            }
            
            img {
                width: 50%; /*make each image fill half its grid cell */
                height: auto; /*maintain aspect ratio*/
            }
            
            h1 {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Discography</h1>
        <div class='grid-container'>
            <%
            //use a try/catch block to catch any database exceptions
            try {
                //create a connection to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kgatlw", "root", "admin");
                //create a new SQL statement using the connection
                Statement stmt = con.createStatement();

                //execute the SQL statement to retrieve a result set of records from the database.
                //This SQL query will retrieve all of the records in the products table
                ResultSet rs = stmt.executeQuery("SELECT * FROM discography;");

                //loop through the resultset of products and add the product info to the grid
                while(rs.next()) {
            %>
                <div class="grid-item card text-center">
                    <%=rs.getString("title")%>
                    <br>
                    <%=rs.getString("year")%>
                    <br>
                    <div class="d-flex justify-content-center position-relative">
                        <img src="Discography_Images/<%=rs.getString("id")%>.jpg" alt="Album">
                        <br>
                    </div>
                </div>
            <%
                    } //end while loop
                } catch (Exception e) {
                    out.print("An error occurred: " + e.getMessage());
                } //end try catch
            %>
        </div>
        <div class="d-flex justify-content-center position-relative">
                <a href='index.jsp' class="btn btn-primary" style='width: 200px; transform: translate(-20%, 0%)'>Home</a>
                <a href='signup.jsp' class="btn btn-primary" style='width: 200px; transform: translate(+20%, 0%)'>Fan Club Signup</a>
        </div>
    </body>
</html>
