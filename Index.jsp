<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Acuity App</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Ensure the stylesheet path is correct -->
    <script>
        function saveCounts(e) {
            e.preventDefault(); 

            const numNurses = document.getElementById('numNurses').value;
            const numPatients = document.getElementById('numPatients').value;

      
            localStorage.setItem('numNurses', numNurses);
            localStorage.setItem('numPatients', numPatients);

      
            alert("Counts saved successfully!");
        }

        function navigateTo(page) {
            window.location.href = page; 
        }
    </script>
</head>
<body>
    <div class="header-text">Beem Health Group</div>
    <div class="header-line"></div>
    <div class="diagonal-line"></div>

    <div class="index-container">
        <h1>Welcome to Patient Acuity App</h1>
        <form onsubmit="saveCounts(event)">
            <div class="form-input">
                <label for="numNurses">Number of Nurses:</label>
                <input type="number" id="numNurses" name="numNurses" required>
            </div>
            <div class="form-input">
                <label for="numPatients">Number of Patients:</label>
                <input type="number" id="numPatients" name="numPatients" required>
            </div>
            <div class="form-input">
                <button type="submit">Save Counts</button>
            </div>
        </form>

        <div style="position: absolute; bottom: 20px; left: 20px;">
            <button onclick="navigateTo('nurseEntryPage.jsp')">Enter Nurse Info</button>
        </div>
        <div style="position: absolute; bottom: 20px; right: 20px;">
            <button onclick="navigateTo('patientEntryPage.jsp')">Enter Patient Info</button>
        </div>
    </div>
</body>
</html>
