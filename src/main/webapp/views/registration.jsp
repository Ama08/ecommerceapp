<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
</head>
<body>
<h2 style="margin-left: 600px; margin-top: 50px; color: green"> Welcome to the Bank!</h2>
    <br>
    <br>
    <h3 style="margin-left: 550px; color: Blue">Enter your Details </h3>
    <form action="register" method="post">
        <div style="margin-left: 500px; margin-right: 500px"
            class="form-group">
            <div>
                <label for="exampleInputEmail1">Username</label> <input type="text"
                    class="form-control" placeholder="Enter Username" name = "username">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label> <input
                    type="password" class="form-control" placeholder="Password" name="password">
            </div>
            <div>
                <label for="exampleInputEmail1">First Name</label> <input
                    type="text" class="form-control" placeholder="Enter First Name"  name = "firstName">
            </div>
            <div>
                <label for="exampleInputEmail1">Last Name</label> <input type="text"
                    class="form-control" placeholder="Enter Last Name"  name = "lastName">
            </div>
            <div>
                <label for="exampleInputEmail1">Email</label> <input type="email"
                    class="form-control" placeholder="Enter Email Address" name = "email">
            </div>
        </div><br>
        <button style="margin-left: 600px" type="submit"
            class="btn btn-primary">Register</button>
        <br>
        <br>

</body>
</html>