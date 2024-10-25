<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
        }
        p {
            color: #666;
            line-height: 1.6;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>About Us</h1>
         <script>
        function setFeedbackCookie() {
            var feedback = document.getElementById("feedback").value;
            document.cookie = "feedback=" + feedback + ";path=/";
            alert("Thank you for your feedback!");
        }
    </script>
        <p>Welcome to Fashion Shopping, your one-stop destination for all your fashion needs. We offer a wide range of trendy clothing, shoes, accessories, and more to help you express your unique style.</p>
        <p>At Fashion Shopping, we are passionate about providing our customers with the latest fashion trends at affordable prices. Our curated collections feature high-quality products from top brands and designers.</p>
        <p>Whether you're looking for casual everyday wear, elegant evening dresses, or stylish accessories to complete your look, we've got you covered. Our user-friendly website makes it easy to browse, shop, and stay up-to-date with the latest fashion trends.</p>
        <p>Thank you for choosing Fashion Shopping. We look forward to helping you look and feel your best!</p>
        <a href="javascript:history.back()" class="back-link">Back to Home</a>
        
    <%-- Check if a cookie named "visits" exists --%>
    <% Cookie[] cookies = request.getCookies();
       boolean isNewVisitor = true;
       if (cookies != null) {
           for (Cookie cookie : cookies) {
               if (cookie.getName().equals("visits")) {
                   isNewVisitor = false;
                   break;
               }
           }
       }
       if (isNewVisitor) {
           // If it's a new visitor, create a new cookie named "visits" and set its value to 1
           Cookie visitsCookie = new Cookie("visits", "1");
           // Set the cookie to expire after 24 hours (86400 seconds)
           visitsCookie.setMaxAge(86400);
           // Add the cookie to the response
           response.addCookie(visitsCookie);
    %>
    <p>Thank you for visiting our website for the first time!</p>
    <% } else { %>
    <p>You have visited our website before. Welcome back!</p>
    <% } 
    %>

    <h2>Feedback</h2>
    <form>
        <textarea id="feedback" rows="4" cols="50"></textarea><br>
        <button type="button" onclick="setFeedbackCookie()">Submit Feedback</button>
    </form>
    </div>
</body>
</html>
