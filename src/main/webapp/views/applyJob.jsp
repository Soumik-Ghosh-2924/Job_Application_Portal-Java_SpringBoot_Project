<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 600px;
        }
        h2 {
            color: #343a40;
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: bold;
            color: #495057;
        }
        .form-control {
            border-radius: 6px;
            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
        }
        button[type="submit"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
        }
        .mb-3 {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Apply for Post ID: ${postId}</h2>
        <form:form action="submitApplication" method="post" modelAttribute="applicationForm" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="name" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Current Address</label>
                <input type="text" class="form-control" id="address" name="address" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="mb-3">
                <label for="resume" class="form-label">Upload Resume (PDF)</label>
                <input type="file" class="form-control" id="resume" name="resume" accept=".pdf" required>
            </div>

            <div class="mb-3">
                <label for="photo" class="form-label">Passport-size Photograph</label>
                <input type="file" class="form-control" id="photo" name="photo" accept="image/*" required>
            </div>

            <div class="mb-3">
                <label for="idProof" class="form-label">Government ID Proof (Aadhar/PAN)</label>
                <input type="file" class="form-control" id="idProof" name="idProof" accept="application/pdf,image/*" required>
            </div>

            <button type="submit" class="btn btn-primary">Submit Application</button>
        </form:form>
    </div>
</body>
</html>
