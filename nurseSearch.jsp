<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }

        .search-container {
            text-align: center;
        }

        .search-input {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px 0 0 4px;
            box-sizing: border-box;
        }

        .search-dropdown {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 0;
            box-sizing: border-box;
        }

        .search-button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
            transition: background-color 0.3s;
            box-sizing: border-box;
        }

        .search-button:hover {
            background-color: #45a049;
        }

        .search-container {
            display: flex;
            align-items: center;
        }

        .search-dropdown {
            margin-right: 5px;
        }
    </style>
</head>
<body>

<div class="search-container">
    <select class="search-dropdown">
        <option value="nurseName">Name</option>
        <option value="nurseAge">Age</option>
        <option value="nurseGender">Gender</option>
        <option value="nurseCertification">Certifications</option>
    </select>
    <input type="text" class="search-input" placeholder="Enter nurse information...">
    <button class="search-button" onclick="openPage('nursePage.jsp')">Search</button>
    <%-- nursePage.jsp is just a placeholder, page will open to the info of the nurse searched--%>
</div>

<script>
    function openPage(url) {
        window.location.href = url;
    }
</script>

</body>
</html>
