<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Entry Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
       
        #patientFormsContainer {
            display: grid;
            grid-template-columns: repeat(3, 1fr); 
            gap: 20px; 
            margin-top: 20px; 
        }

        form {
            background-color: #fff; 
            border: 1px solid #ccc; 
            padding: 10px;
            border-radius: 5px; 
        }

        h3 {
            margin-top: 0; 
        }
    </style>
    <script>
        window.onload = function() {
            const numPatients = parseInt(localStorage.getItem('numPatients'), 10) || 1; 
            const container = document.getElementById('patientFormsContainer');

            for (let i = 0; i < numPatients; i++) {
                container.innerHTML += `
                    <form onsubmit="return savePatientInfo(event, ${i});">
                        <h3>Patient ${i + 1} Information</h3>
                        <label for="firstName${i}">First Name:</label>
                        <input type="text" id="firstName${i}" name="firstName" required><br>

                        <label for="lastName${i}">Last Name:</label>
                        <input type="text" id="lastName${i}" name="lastName" required><br>

                        <label for="age${i}">Age:</label>
                        <input type="number" id="age${i}" name="age" required><br>

                        <label for="gender${i}">Gender:</label>
                        <select id="gender${i}" name="gender" required>
                            <option value="" selected>Select gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select><br>

                        <label for="weight${i}">Weight (lb):</label>
                        <input type="number" id="weight${i}" name="weight" required><br>

                        <label for="temperature${i}">Temperature (°C):</label>
                        <input type="number" id="temperature${i}" name="temperature" required><br>

                        <label for="bloodpressureSYS${i}">Blood Pressure SYS/DIA:</label>
                        <input type="text" id="bloodpressureSYS${i}" name="bloodpressureSYS" required> /
                        <input type="text" id="bloodpressureDIA${i}" name="bloodpressureDIA" required><br>

                        <label for="heightfeet${i}">Height (ft/in):</label>
                        <input type="number" id="heightfeet${i}" name="heightfeet" required> ft
                        <input type="number" id="heightinch${i}" name="heightinch" required> in<br>

                        <label for="medicationField1${i}">Medication 1:</label>
                        <input type="text" id="medicationField1${i}" name="medication1" required><br>

                        <label for="medicationField2${i}">Medication 2:</label>
                        <input type="text" id="medicationField2${i}" name="medication2"><br>

                        <label for="medicationField3${i}">Medication 3:</label>
                        <input type="text" id="medicationField3${i}" name="medication3"><br>

                        <label for="notes${i}">Notes:</label>
                        <textarea id="notes${i}" name="notes"></textarea><br>

                        <button type="submit">Save Patient ${i + 1} Info</button>
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
</head>
<body>

    <h1>Enter Patient Information</h1>
    <div id="patientFormsContainer"></div> 

    <button onclick="window.location.href='Index.jsp';" style="margin-top: 20px;">Back to Index</button>

</body>
</html>
