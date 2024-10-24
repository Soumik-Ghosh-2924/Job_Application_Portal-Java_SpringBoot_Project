<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.JobApp.model.JobPost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details</title>
    <!-- Add Bootstrap CSS link -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
    <style>
        body {
            background-color: #f1f3f5;
        }
        .navbar {
            background-color: #ffc107; /* Bright yellow background for navbar */
            padding: 15px;
        }
        .navbar-brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: #343a40;
        }
        .navbar-nav .nav-link {
            font-size: 1.2rem;
            font-weight: bold;
            color: #343a40;
        }
        .container {
            margin-top: 40px;
        }
        h2 {
            color: #343a40;
            margin-bottom: 30px;
        }
        .card {
            border: 2px solid #343a40;
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-body {
            padding: 20px;
        }
        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #495057;
        }
        .card-text {
            font-size: 1.1rem;
            color: #6c757d;
            margin-bottom: 10px;
        }
        ul {
            padding-left: 20px;
        }
        li {
            font-size: 1rem;
        }
        .card-footer {
            text-align: center;
            background-color: #343a40;
            color: #ffffff;
            padding: 10px;
            border-top: 2px solid #343a40;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        .btn-primary {
            background-color: #343a40;
            border-color: #343a40;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand" href="#">Job Portal For IT Professionals</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewalljobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://github.com/Soumik-Ghosh-2924/">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h2 class="text-center"><u>Job Post Details</u></h2>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">${jobPost.postProfile}</h5>
                    <p class="card-text">
                        <strong>Job-Id:</strong> ${jobPost.postId}
                    </p>
                    <p class="card-text">
                        <strong>Description:</strong> ${jobPost.postDesc}
                    </p>
                    <p class="card-text">
                        <strong>Experience Required:</strong> ${jobPost.reqExperience} years
                    </p>
                    <p class="card-text">
                        <strong>Tech Stack Required:</strong>
                        <ul>
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>
                    </p>
                </div>
                <div class="card-footer">
                    CopyRight &copy; 2024 SG Dev-Comm.
                </div>
            </div>
        </div>
    </div>
</div>

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
</body>
</html>
