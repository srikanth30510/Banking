<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* Footer Styling */
.footer {
    background-color: #f5f5f5;
    border-top: 1px solid #ddd;
    padding: 30px 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.footer-section {
    width: calc(33.33% - 40px);
    padding: 0 20px;
    text-align: left;
    box-sizing: border-box;
}

.section-heading {
    color: #3C6382;
    /* Primary color - Dark Blue */
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 15px;
}

.footer-section p {
    color: #333;
    line-height: 1.6;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-section">
                <h3 class="section-heading">Company Name</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec dolor eu odio rhoncus convallis
                    vel eget velit.</p>
                <p>&copy; 2023 Your Company. All rights reserved.</p>
            </div>
            <div class="footer-section">
                <h3 class="section-heading">Contact Information</h3>
                <p>Address: 1234 Main St, City, Country</p>
                <p>Email: support@example.com</p>
            </div>
            <div class="footer-section">
                <h3 class="section-heading">About Us</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec dolor eu odio rhoncus convallis
                    vel eget velit.</p>
            </div>
        </div>
    </footer>

</body>
</html>