<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
    <table class="table align-middle mb-0 bg-white">
  <thead class="bg-light">
    <tr>
      <th>Post</th>
            <th>Caption</th>
            <th>Likes</th>
            <th>Dislikes</th>
            <th>Comment</th>
         
    </tr>
  </thead>
  <tbody>
  <c:forEach var="post11" items="${post}">
    <tr>
      <td>
        <div class="d-flex align-items-center">
          <img
              src="https://mdbootstrap.com/img/new/avatars/8.jpg"
              alt=""
              style="width: 45px; height: 45px"
              class="rounded-circle"
              />
          <div class="ms-3">
      <!--       <p class="fw-bold mb-1">John Doe</p>
            <p class="text-muted mb-0">john.doe@gmail.com</p> -->
          </div>
        </div>
      </td>
      <td>
        <p class="fw-normal mb-1">${post11.caption}</p>
        
      </td>
      <td>
       ${post11.likes}
      </td>
      <td>${post11.dislikes} </td>
      <td>
        <button type="button" class="btn btn-link btn-sm btn-rounded">
         comment
        </button>
        <button type="button" class="btn btn-link btn-sm btn-rounded">
         edit
        </button>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
 </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  