<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nurse Information (TEMPLATE)</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            position: relative;
        }
        .container {
            text-align: center;
            padding-top: 50px;
        }
        .profile-image {
            width: 300px;
            height: auto;
            display: block;
            margin: 0 auto;
        }
        .profile-info {
            margin-top: 20px;
            text-align: center;
        }
        .back-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .certifications {
            text-align: center;
            margin-top: 10px;
            list-style-position: inside;
        }
    </style>
</head>
<body>
<div class="container">
    <img src="nurse.jpg" alt="Profile Image" class="profile-image">
    <div class="profile-info">
        <p>Name: placeholder</p>
        <p>Age: placeholder</p>
        <p>Gender: placeholder</p>
        <p class="certifications">Medical Certifications:
        <ul class="certifications">
            <li>Certification 1</li>
            <li>Certification 2</li>
        </ul>
    </div>
</div>

<a href="nurseSearch.jsp" class="back-button">Back to Search</a>
</body>
</html>



