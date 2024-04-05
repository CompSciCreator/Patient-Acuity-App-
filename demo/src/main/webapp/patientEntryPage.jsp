<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Entry Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body class="bg-gray-100 min-h-screen flex flex-col justify-center items-center">

    <h1 class="text-3xl font-bold mb-8">Enter Patient Information</h1>
    <div id="patientFormsContainer" class="grid gap-8 grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-4"></div> 

    <script>
        window.onload = function() {
            const numPatients = parseInt(localStorage.getItem('numPatients'), 10) || 1; 
            const container = document.getElementById('patientFormsContainer');

            for (let i = 0; i < numPatients; i++) {
                container.innerHTML += `
                    <form onsubmit="return savePatientInfo(event, ${i});" class="bg-white border border-gray-300 p-4 rounded">
                        <h3 class="text-lg font-semibold mb-4">Patient ${i + 1} Information</h3>
                        <label for="firstName${i}" class="block">First Name:</label>
                        <input type="text" id="firstName${i}" name="firstName" required class="input mb-2"><br>

                        <label for="lastName${i}" class="block">Last Name:</label>
                        <input type="text" id="lastName${i}" name="lastName" required class="input mb-2"><br>

                        <label for="age${i}" class="block">Age:</label>
                        <input type="number" id="age${i}" name="age" required class="input mb-2"><br>

                        <label for="gender${i}" class="block">Gender:</label>
                        <select id="gender${i}" name="gender" required class="input mb-2">
                            <option value="" selected>Select gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select><br>

                        <!-- Rest of the form fields -->

                        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Save Patient ${i + 1} Info</button>
                    </form>
                `;
            }
        };

        function savePatientInfo(event, patientIndex) {
            event.preventDefault();
            alert(`Information for Patient ${patientIndex + 1} saved.`);
           
            return false; 
        }
    </script>

    <button onclick="window.location.href='Index.jsp';" style="margin-top: 20px;" class="bg-gray-500 text-white px-4 py-2 rounded mt-8">Back to Index</button>

</body>
</html>

