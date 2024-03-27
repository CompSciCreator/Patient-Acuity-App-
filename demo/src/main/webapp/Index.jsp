<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Acuity App</title>
    <link rel="stylesheet" href="/demo/src/main/styles/styles.css"> 
    
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
        <h1>Welcome To The Patient Acuity App</h1>
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
            <button onclick="navigateTo('nursePage.jsp')">Nurse Summary Page</button>
        </div>
        
        <div style="position: absolute; bottom: 20px; right: 20px;">
            <button onclick="navigateTo('patientEntryPage.jsp')">Enter Patient Info</button>
            <button onclick="navigateTo('nurseSearch.jsp')">Nurse Search Page</button>
            <button onclick="navigateTo('patientSearch.jsp')">Patient Search Page</button>
        </div>
        

    </div>
</body>

<style>
    /* Your CSS styles here */
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f2f2;
    position: relative;
    overflow: hidden;
}

.header-text {
    position: absolute;
    top: 0;
    left: 0;
    padding: 10px 20px;
    font-size: 30px;
    font-weight: bold;
    color: black;
    z-index: 10;
}

.header-line {
    position: absolute;
    top: 50px;
    left: 0;
    width: 100%;
    height: 4px;
    background-color: #007bff;
    z-index: 1;
}

.diagonal-line {
    position: absolute;
    top: 50%;
    left: -25%;
    width: 150%;
    height: 4px;
    background-color: #007bff;
    transform: rotate(-45deg);
    z-index: 1;
}

.index-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

h1 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
}

.form-input {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type=number] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

input[type=submit] {
    padding: 10px 20px;
    background-color: #5cb85c;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #4cae4c;
}
    /* Add more styles as needed */
</style>
</html>
