<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <style>

        footer
        {
                background-color: #2c3e50;
                padding: 20px 0;
                text-align: center;
                position: relative;
                color: #ecf0f1;
                width: 100%;
        }

        footer p
        {
                font-size: 14px;
        }

        body {
            background: url('resources/images/img1.jpg') no-repeat center center fixed;
            background-size: cover; /* Ensures the background covers the entire page */
            color: #343a40; /* Text color to contrast the background */
        }

        nav.navbar {
            background-color: #ffeeba; /* Soft yellow for a welcoming header */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Add shadow to the navbar */
        }

        .navbar-brand {
            font-size: 2rem;
            color: #343a40;
        }

        .nav-link {
            color: #343a40;
            font-weight: bold;
        }

        .nav-link:hover {
            color: #007bff; /* Add blue hover effect */
        }

        h2, h5 {
            font-weight: bold;
            text-transform: uppercase;
        }

        .card {
            transition: transform 0.3s ease;
            border: none;
            border-radius: 10px;
            overflow: hidden;
        }

        .card:hover {
            transform: scale(1.05); /* Slight zoom on hover */
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1); /* Shadow effect */
        }

        .card-body {
            background-color: #ffc107; /* Bright yellow background */
            color: #343a40;
            border-radius: 10px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            font-weight: bold;
            padding: 10px 20px;
            font-size: 1.1rem;
            border-radius: 5px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        /* Responsiveness */
        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 1.5rem;
            }

            .card-title {
                font-size: 1.3rem;
            }

            .btn-primary {
                font-size: 1rem;
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand" href="#"><b>Job Portal For IT Professionals</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home"><b>Home</b></a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs"><b>Jobs</b></a></li>
                <li class="nav-item"><a class="nav-link" href="https://github.com/Soumik-Ghosh-2924/"><b>Contact</b></a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <!-- Card 1: All Job Listings -->
        <div class="col-md-6 mb-5">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title"><b>All Job Listings</b></h5>
                    <form action="/viewalljobs" method="get">
                        <button type="submit" class="btn btn-primary">Check</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Card 2: Add New Job Profile -->
        <div class="col-md-6 mb-5">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title"><b>Add New Job Profile</b></h5>
                    <form action="/addjob" method="get">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

    <footer>
        <div class="footer-content">
            <p><b>&copy; 2024 SG Dev-Comm. All Rights Reserved.</b></p>
        </div>
    </footer>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
