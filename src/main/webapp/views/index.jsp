<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The Bank login </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<form action ="login" ,method = "post">
<h1 style="margin-left: 600px; margin-top: 50px; color: green"> Welcome to The Bank!</h1>
 <div style="margin-left: 500px; margin-right: 500px">
  <h6 style = "color: red ">${loginErrorMessage}</h6>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Username</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name = "username">
   
  </div>
 
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name = "password">
  </div>
 
  <button style="margin-left: 200px"type="submit" class="btn btn-warning">Login</button><br><br>

<h6> Don't have an account? <a  href="registration">Register</a> </h6>
</div>
</form>

</body>
</html>