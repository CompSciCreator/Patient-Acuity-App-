<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Patient Entry Page</title>
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

    form {
      text-align: center;
    }

    input, select {
      margin: 10px;
      padding: 8px;
    }
    
    textarea {
      resize: vertical;
    }
  </style>
</head>
<body>

  <h1>Enter New Patient Information</h1>

  <form onsubmit="submitForm(event)">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" placeholder="Enter first name" required><br>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" placeholder="Enter last name" required><br>

    <label for="age">Age:</label>
    <input type="number" id="age" name="age" placeholder="Enter age" required><br>

    <label for="gender">Gender:</label>
    <select id="gender" name="gender" required>
    	<option value="" selected>Select gender</option>
    	<option value="G1">Male</option>
    	<option value="G2">Female</option>
    </select><br>

    <label for="weight">Weight(lb):</label>
    <input type="number" id="weight" name="weight" placeholder="lb" required><br>
    
    <label for="temperature">Temperature:</label>
    <input type="number" id="temperature" name="temperature" placeholder="°C" required><br>
    
    <label for="bloodpressure">Blood Pressure:</label>
    <input type="number" id="bloodpressureSYS" name="bloodpressure" placeholder="mmHg" required>
    /
    <input type="number" id="bloodpressureDIA" name="bloodpressure" placeholder="mmHg" required> <br>
    
    <label for="height">Height(ft):</label>
    <input type="number" id="heightfeet" name="heightfeet" placeholder="ft" required>
    <input type="number" id="heightinch" name="heightinch" placeholder="in" required><br>
    
    <label for="medication">Add Medication 1:</label>
	<input type="text" id="medicationField1" name="MedicationField" placeholder="Enter Medication (i.e. Ibuprofen)" required> <br>
	
	<label for="medication">Add Medication 2:</label>
	<input type="text" id="medicationField2" name="MedicationField" placeholder="Enter Medication (i.e. Ibuprofen)"> <br>
    
    <label for="medication">Add Medication 3:</label>
	<input type="text" id="medicationField3" name="MedicationField" placeholder="Enter Medication (i.e. Ibuprofen)"> <br>
    
    
    <label for="notes">Notes:</label>
    <textarea id="notes" name="notes" placeholder="Enter your notes"></textarea><br>
    <button onclick="submitForm()">Submit</button><br>
  </form>

  <script>
  
  	function submitForm(event) {
      event.preventDefault();
      
      var firstName = document.getElementById('firstName').value;
      var lastName = document.getElementById('lastName').value;
      var age = document.getElementById('age').value;
      var gender = document.getElementById('gender').value;
      var temperature = document.getElementById('temperature').value;
      
      var bloodPressure = new bloodPressure();
      bloodPressure.append('bloodpressureSYS', document.getElementById('bloodpressureSYS').value;);
      bloodPressure.append('bloodpressureDIA', document.getElementById('bloodpressureDIA').value;);
      
      var weight = document.getElementById(weight').value;
      var height = new height();
      var medication1 = new medication1();
      var medication2 = new medication2();
      var medication3 = new medication3();
      height.append('heightfeet', document.getElementById('heightfeet').value;);
      height.append('heightinch', document.getElementById('heightinch').value;);
      
      
      var notes = document.getElementById('notes').value;

      var formData = new FormData();
      formData.append('firstName', firstName);
      formData.append('lastName', lastName);
      formData.append('age', age);
      formData.append('gender', gender);
      
      formData.append('weight', weight);
      formData.append('height', height);
      formData.append('temperature', temperature);
      formData.append('bloodpressure', bloodPressure);
      formData.append('medication', medication1);
      formData.append('medication', medication2);
      formData.append('medication', medication3);
      
      
	  formData.append('notes', notes);


      fetch('process.php', {
        method: 'POST',
        body: formData
      })
      .then(response => response.json())
      .then(data => {
        console.log('Response from server:', data);
        // Handle the server response here
      })
      .catch(error => console.error('Error:', error));
    }
  </script>

</body>
</html>

