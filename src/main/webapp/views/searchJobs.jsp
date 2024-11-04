<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Job Results</title>
</head>
<body>
    <h2>Search Results for: <strong>${keyword}</strong></h2>

    <c:choose>
        <c:when test="${not empty jobs}">
            <ul>
                <c:forEach var="job" items="${jobs}">
                    <li>${job.title} - ${job.company}</li>
                </c:forEach>
            </ul>
        </c:when>
        <c:otherwise>
            <p>No jobs found matching "<strong>${keyword}</strong>"</p>
        </c:otherwise>
    </c:choose>
</body>
</html>
