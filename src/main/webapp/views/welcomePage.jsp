<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome!</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
</head>
<body>
<h1 style="margin-left: 650px; margin-top: 50px; color: green"> The Bank</h1>
<ul class="nav justify-content-center">

  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Home</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="masterModule">Master</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Contact Us</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="http://localhost:8080/">Logout</a>
  </li>
  
</ul>
<h3>Welcome ${userData.getFirstName()}</h3>

<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Username</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">${userData.getUsername()}</th>
      <td>${userData.getFirstName()}</td>
      <td>${userData.getLastName()}</td>
      <td>${userData.getEmail()}</td>
    </tr>
    
  </tbody>
</table>

<div style= "margin-top: 450px; margin-left:50pxs" class="card-footer text-muted"> 2 days ago
  </div>



</body>
</html>