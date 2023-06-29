<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fan Club Signup</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <h1 style="text-align: center;">Sign Up for the free King Gizzard and the Lizard Wizard fanclub!</h1>
        <div class="d-flex justify-content-center position-relative">
            <div class="card" style="padding: 20px; transform: translate(0%, +50%); color: white; background-color: black;">
                <form action="thanks.jsp" method="post">
                    <label for="firstname">First Name:</label>
                    <input type="text" id="firstname" name='firstname'><br>

                    <label for="lastname">Last Name:</label>
                    <input type="text" id="lastname" name='lastname' style="transform: translate(+.5%, 0%);"><br>

                    <label for="email">email:</label>
                    <input type="text" id="email" name="email" style="transform: translate(+20%, 0%);"><br>

                    <input type="submit" value="Submit">
                </form>
            </div>
        </div>
        <div class="d-flex justify-content-center position-relative">
                <a href='index.jsp' class="btn btn-primary" style='width: 200px; transform: translate(-20%, +800%)'>Home</a>
                <a href='discography.jsp' class="btn btn-primary" style='width: 200px; transform: translate(+20%, +800%)'>Discography</a>
        </div>
    </body>
</html>
