<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information Form</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container, .grid {
            text-align: center;
            display: grid;
            grid-template-columns: repeat(3, 1fr); 
            gap: 20px; 
            width: 100%; 
            max-width: 1200px; 
            margin: auto; 
        }

        input, select, textarea {
            margin: 10px;
            padding: 8px;
        }

        .grid-item {
            background-color: #f0f0f0;
            padding: 10px;
            border-radius: 5px; 
        }
    </style>
</head>
<body onload="generateNurseForms()">

    <h1>Enter Nurse Information</h1>
    <div id="nurseFormsContainer" class="form-container"></div> 

    <script>
        function generateNurseForms() {
            const numNurses = parseInt(localStorage.getItem('numNurses'), 10) || 1; 
            const container = document.getElementById('nurseFormsContainer');
            container.innerHTML = ''; 

            for (let i = 0; i < numNurses; i++) {
                const gridItem = document.createElement('div');
                gridItem.className = 'grid-item';
                gridItem.innerHTML = `
                    <h3>Nurse ${i + 1}</h3>
                    <form id="nurseForm${i}" onsubmit="event.preventDefault(); submitNurseForm(${i});">
                        <input type="text" id="firstName${i}" placeholder="First Name" required><br>
                        <input type="text" id="lastName${i}" placeholder="Last Name" required><br>
                        <input type="number" id="age${i}" placeholder="Age" required><br>
                        <select id="gender${i}" required>
                            <option value="">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select><br>
                        <select id="certification${i}" required>
                            <option value="" disabled selected>Select a certification</option>
                            <option value="C1">Certification 1</option>
                            <option value="C2">Certification 2</option>
                            <option value="C3">Certification 3</option>
                        </select><br>
                        <textarea id="notes${i}" placeholder="Notes"></textarea><br>
                        <button type="submit">Save Nurse ${i + 1} Info</button>
                    </form>
                `;
                container.appendChild(gridItem);
            }
        }

        function submitNurseForm(index) {
            const formId = `nurseForm${index}`;
         
            alert(`Nurse ${index + 1} information saved. (Implement saving logic)`);
        }
    </script>

    <button onclick="window.location.href='Index.jsp';" style="margin-top: 20px;">Back to Index</button>

</body>
</html>
