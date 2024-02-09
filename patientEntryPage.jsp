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
    <input type="text" id="firstName" name="firstName" placeholder="Enter your first name" required><br>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" placeholder="Enter your last name" required><br>

    <label for="age">Age:</label>
    <input type="number" id="age" name="age" placeholder="Enter your age" required><br>

    <label for="gender">Gender:</label>
    <select id="gender" name="gender" required>
    	<option value="" selected>Select your gender</option>
    	<option value="G1">Male</option>
    	<option value="G2">Female</option>
    </select><br>

    <label for="condition">Condition:</label>
  	<textarea id="notes" name="notes" placeholder="Enter your condition"></textarea><br>

    <label for="weight">weight(lb):</label>
    <input type="number" id="weight" name="weight" placeholder="lb" required><br>
    
    <label for="height">height(ft):</label>
    <input type="number" id="heightfeet" name="heightfeet" placeholder="ft" required>
    <input type="number" id="heightinch" name="heightinch" placeholder="in" required><br>
    
    <label for="medication">Add Medication Name:</label>
	<input type="text" id="medicationField" name="MedicationField" placeholder="Enter Medication (i.e. Ibuprofen)" required>
	<button type="button" onclick="addMediation()">Add</button><br>
	<ul id="medicationList"></ul><br>
    
    <label for="notes">Notes:</label>
    <textarea id="notes" name="notes" placeholder="Enter your notes"></textarea><br>
    <button onclick="submitForm()">Submit</button><br>
  </form>

  <script>
  	
  	function addMedication() {
		var li = document.createElement("li");
	    // li.textContent = document.querySelector("medicationField");
		li.textContent = document.getElementbyId('medicationField').value;
	    document.querySelector("medicationList").appendChild(li);
	    document.getElementById("medicationField").value = "";
	    }

  
  	function submitForm(event) {
      event.preventDefault();
      
      var firstName = document.getElementById('firstName').value;
      var lastName = document.getElementById('lastName').value;
      var age = document.getElementById('age').value;
      var gender = document.getElementById('gender').value;
      
      var condition = document.getElementById('condition').value;
      var weight = document.getElementById(weight').value;
      var height = new height();
      height.append('heightfeet', document.getElementById('heightfeet').value;);
      height.append('heightinch', document.getElementById('heightinch').value;);
      var medication = new medication();
      
      var notes = document.getElementById('notes').value;

      var formData = new FormData();
      formData.append('firstName', firstName);
      formData.append('lastName', lastName);
      formData.append('age', age);
      formData.append('gender', gender);
      
      formData.append('condition', condition);
      formData.append('weight', weight);
      formData.append('height', height);
      formData.append('medication', medication);
      
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

