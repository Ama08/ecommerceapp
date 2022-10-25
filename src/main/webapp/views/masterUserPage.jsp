<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
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
<ul class="nav flex-column">
   <li class="nav-item">
    <a class="nav-link" href="/masterUser">User</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  
</ul>
<h3>No of Users present ${allUsers.size()}</h3>
<table class="table">
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
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
<div style= "margin-top: 550px; margin-left:50pxs" class="card-footer text-muted"> 2 days ago
  </div>
</body>
</html>