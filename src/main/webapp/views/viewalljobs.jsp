<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.JobApp.model.JobPost" %>
<%@ page import="com.example.JobApp.repo.JobRepo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .navbar {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .container {
            margin-top: 50px;
        }
        h2 {
            font-size: 36px;
            color: #333;
            font-family: 'Arial', sans-serif;
            font-weight: bold;
            text-transform: uppercase;
            text-decoration: underline;
            margin-bottom: 40px;
        }
        .card {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.03);
        }
        .card-title {
            font-size: 24px;
            color: #0056b3;
            font-weight: bold;
        }
        .card-text {
            font-size: 16px;
            color: #555;
        }
        .card-footer {
            background-color: #f8f9fa;
            font-size: 14px;
            text-align: center;
            font-weight: bold;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#"><b>Job Portal For IT Professionals</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home"><b>Home</b></a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs"><b>All Jobs</b></a></li>
                <li class="nav-item"><a class="nav-link" href="https://github.com/Soumik-Ghosh-2924/"><b>Contact</b></a></li>
            </ul>
        </div>
    </div>
</nav>

<ab:set var="jobPosts" value="${jobPosts}" />

<div class="container">
    <h2 class="text-center"><i><b><u>Job Vacancies</u></b></i></h2>

    <div class="row row-cols-1 row-cols-md-2 g-4">
        <ab:forEach var="jobPost" items="${jobPosts}">
            <div class="col mb-4">
                <div class="card border-dark">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.postProfile}</h5>
                         <p class="card-text">
                            <strong>Job-Id: </strong>${jobPost.postId}
                        </p>
                        <p class="card-text">
                            <strong>Description: </strong>${jobPost.postDesc}
                        </p>
                        <p class="card-text">
                            <strong>Experience Required: </strong>${jobPost.reqExperience} years
                        </p>
                        <p class="card-text">
                            <strong>Tech Stack Required: </strong>
                            <ul>
                                <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                    <li>${tech}</li>
                                </ab:forEach>
                            </ul>
                        </p>
                        <a href="applyJob?postId=${jobPost.postId}" class="btn btn-primary">Apply</a>
                    </div>
                    <div class="card-footer">
                        Copyright &copy; 2024 SG Dev-Comm.
                    </div>
                </div>
            </div>
        </ab:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
