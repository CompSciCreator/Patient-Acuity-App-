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

  <h1>Enter Nurse Information</h1>

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

    <label for="certification">Medical Certification:</label>
    <select id="certification" name="certification" required>
      <option value="" disabled selected>Select a certification</option>
      <option value="C1">Certification 1</option>
      <option value="C2">Certification 2</option>
      <option value="C3">Certification 3</option>
      <!-- Add more certification options as needed -->
    </select><br>
    
    <label for="notes">Notes:</label>
    <textarea id="notes" name="notes" placeholder="Enter your notes"></textarea><br>

    <input type="submit" value="Submit">
  </form>

  <script>
    function submitForm(event) {
      event.preventDefault();

      var firstName = document.getElementById('firstName').value;
      var lastName = document.getElementById('lastName').value;
      var age = document.getElementById('age').value;
      var gender = document.getElementById('gender').value;
      var certification = document.getElementById('certification').value;
      var notes = document.getElementById('notes').value;

      var formData = new FormData();
      formData.append('firstName', firstName);
      formData.append('lastName', lastName);
      formData.append('age', age);
      formData.append('gender', gender);
      formData.append('certification', certification);
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


