<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Page</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-200">

<div class="flex justify-center items-center h-screen">
    <div class="search-container">
        <select class="search-dropdown px-4 py-2 text-lg border border-gray-300 rounded-l-md w-36 h-12">
            <option value="nurseName">Name</option>
            <option value="nurseAge">Age</option>
            <option value="nurseGender">Gender</option>
            <option value="nurseCertification">Certifications</option>
        </select>
        <input type="text" class="search-input px-4 py-2 text-lg border border-gray-300 rounded-none" placeholder="Enter nurse information...">
        <button class="search-button px-6 py-2 text-lg bg-green-500 text-white border border-green-500 rounded-r-md transition duration-300 ease-in-out hover:bg-green-600 focus:outline-none focus:ring focus:ring-green-400" onclick="openPage('patientPage.jsp')">Search</button>
        <%-- nursePage.jsp is just a placeholder, page will open to the info of the nurse searched--%>
    </div>
</div>

<script>
    function openPage(url) {
        window.location.href = url;
    }
</script>

</body>
</html>

