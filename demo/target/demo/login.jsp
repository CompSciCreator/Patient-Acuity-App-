<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <!-- Add any necessary CSS or JavaScript files here -->
</head>
<body>
    <h2>Login</h2>
    <form action="login" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br>


        <!-- Hidden input field to indicate a login submission -->

        <input type="hidden" name="loginSubmit" value="true">

        <button type="submit">Login</button>
        
    </form>

    <!-- Add any necessary error message display logic here -->
</body>

<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    padding: 40px;
    width: 320px;
}

.logo {
    text-align: center;
    margin-bottom: 20px;
}

.logo img {
    width: 100px;
    height: 100px;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    font-weight: bold;
}

.form-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
}

.form-group button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.form-group button:hover {
    background-color: #0056b3;
}

.error-message {
    color: #ff0000;
    margin-top: 10px;
    font-size: 14px;
}

.link {
    text-align: center;
    margin-top: 20px;
}

.link a {
    color: #007bff;
    text-decoration: none;
}

.link a:hover {
    text-decoration: underline;
}




</style>








</html>
