<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>IT Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }

        h2 {
            font-size: 1.5rem;
            margin-bottom: 20px;
            font-weight: 700;
            text-transform: uppercase;
            color: #343a40;
        }

        p {
            font-size: 0.875rem;
            margin: 0;
        }

        .navbar {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
            color: #ffffff !important;
        }

        .navbar-nav .nav-link {
            color: #ffffff !important;
            font-size: 1.1rem;
            font-weight: bold;
        }

        .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #ffeb99;
        }

        .form-label {
            font-size: 1.125rem;
            font-weight: 500;
            color: #212529;
        }

        .form-control {
            font-size: 1rem;
            padding: 0.75rem;
            border-radius: 8px;
        }

        .form-select {
            padding: 0.75rem;
            border-radius: 8px;
            font-size: 1rem;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            font-size: 1rem;
            padding: 0.75rem 1.25rem;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .container {
            padding-top: 50px;
        }

        .card-body {
            padding: 2rem;
        }

        .mb-1 {
            margin-bottom: 1rem !important;
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-warning">
        <div class="container">
            <a class="navbar-brand fs-1 fw-medium bg-dark" href="#"><b>Job Portal For IT Professionals</b></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="home"><b>Home</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="viewalljobs"><b>About</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="https://github.com/Soumik-Ghosh-2924/"><b>Contact</b></a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card bg-warning">
                    <div class="card-body">
                        <h2 class="mb-3 text-center fs-3 font-weight-bold"><b><i><u>Post a New Job</u></i></b></h2>
                        <form:form action="handleForm" method="post" modelAttribute="jobPost">
                            <div class="mb-1">
                                <label for="postId" class="form-label">Post ID</label>
                                <input type="text" class="form-control" id="postId" name="postId" required>
                            </div>

                            <div class="mb-1">
                                <label for="postProfile" class="form-label">Post Profile</label>
                                <input type="text" class="form-control" id="postProfile" name="postProfile" required>
                            </div>

                            <div class="mb-1">
                                <label for="postDesc" class="form-label">Post Description</label>
                                <textarea class="form-control" id="postDesc" name="postDesc" rows="2" required></textarea>
                            </div>

                            <div class="mb-1">
                                <label for="reqExperience" class="form-label">Required Experience</label>
                                <input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
                            </div>

                            <div class="mb-2">
                                <label for="postTechStack" class="form-label">Tech Stack</label>
                                <select multiple class="form-select" id="postTechStack" name="postTechStack" required>
                                    <option value="Java">Java</option>
                                    <option value="JavaScript">JavaScript</option>
                                    <option value="Swift">Swift</option>
                                    <option value="TypeScript">TypeScript</option>
                                    <option value="Go">Go</option>
                                    <option value="Kotlin">Kotlin</option>
                                    <option value="Rust">Rust</option>
                                    <option value="PHP">PHP</option>
                                    <option value="HTML5">HTML5</option>
                                    <option value="CSS3">CSS3</option>
                                    <!-- Add more options as needed -->
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>
