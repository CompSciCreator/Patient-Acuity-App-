<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information Form</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body onload="generateNurseForms()" class="bg-gray-100 min-h-screen flex flex-col justify-center">

    <h1 class="text-3xl font-bold mb-8 text-center">Enter Nurse Information</h1>
    <div id="nurseFormsContainer" class="grid gap-4 grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5"></div> 

    <script>
        function generateNurseForms() {
            const numNurses = parseInt(localStorage.getItem('numNurses'), 10) || 1; 
            const container = document.getElementById('nurseFormsContainer');
            container.innerHTML = ''; 

            for (let i = 0; i < numNurses; i++) {
                const gridItem = document.createElement('div');
                gridItem.className = 'p-4 bg-white shadow rounded';
                gridItem.innerHTML = `
                    <h3 class="text-lg font-semibold mb-4">Nurse ${i + 1}</h3>
                    <form id="nurseForm${i}" onsubmit="event.preventDefault(); submitNurseForm(${i});">
                        <input type="text" id="firstName${i}" placeholder="First Name" required class="input"><br>
                        <input type="text" id="lastName${i}" placeholder="Last Name" required class="input"><br>
                        <input type="number" id="age${i}" placeholder="Age" required class="input"><br>
                        <select id="gender${i}" required class="input">
                            <option value="">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select><br>
                        <select id="certification${i}" required class="input">
                            <option value="" disabled selected>Select a certification</option>
                            <option value="C1">Certification 1</option>
                            <option value="C2">Certification 2</option>
                            <option value="C3">Certification 3</option>
                        </select><br>
                        <textarea id="notes${i}" placeholder="Notes" class="input"></textarea><br>
                        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Save Nurse ${i + 1} Info</button>
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

    <button onclick="window.location.href='Index.jsp';" style="margin-top: 20px;" class="bg-gray-500 text-white px-4 py-2 rounded mt-8 mx-auto block">Back to Index</button>

</body>
</html>


