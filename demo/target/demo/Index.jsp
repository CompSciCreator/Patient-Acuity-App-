<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Acuity App</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
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
<body class="bg-gray-200 font-sans">
    <div class="text-3xl font-bold text-center py-8">Beem Health Group</div>
    <div class="h-4 bg-blue-500"></div>
    <!-- <div class="h-4 bg-blue-500 -mt-1 transform rotate-45"></div> -->

    <div class="container mx-auto px-4 py-12">
        <h1 class="text-2xl font-semibold mb-8">Welcome To The Patient Acuity App</h1>
        <form onsubmit="saveCounts(event)">
            <div class="mb-4">
                <label for="numNurses" class="block mb-1">Number of Nurses:</label>
                <input type="number" id="numNurses" name="numNurses" required class="w-full px-4 py-2 border rounded-lg">
            </div>
            <div class="mb-4">
                <label for="numPatients" class="block mb-1">Number of Patients:</label>
                <input type="number" id="numPatients" name="numPatients" required class="w-full px-4 py-2 border rounded-lg">
            </div>
            <div class="mb-4">
                <button type="submit" class="px-4 py-2 bg-green-500 text-white rounded-lg">Save Counts</button>
            </div>
        </form>

        <div class="fixed bottom-4 left-4">
            <button onclick="navigateTo('nurseEntryPage.jsp')" class="px-4 py-2 bg-blue-500 text-white rounded-lg mr-2">Enter Nurse Info</button>
            <button onclick="navigateTo('nursePage.jsp')" class="px-4 py-2 bg-blue-500 text-white rounded-lg">Nurse Summary Page</button>
        </div>

        <div class="fixed bottom-4 right-4">
            <button onclick="navigateTo('patientEntryPage.jsp')" class="px-4 py-2 bg-blue-500 text-white rounded-lg mr-2">Enter Patient Info</button>
            <button onclick="navigateTo('nurseSearch.jsp')" class="px-4 py-2 bg-blue-500 text-white rounded-lg mr-2">Nurse Search Page</button>
            <button onclick="navigateTo('patientSearch.jsp')" class="px-4 py-2 bg-blue-500 text-white rounded-lg">Patient Search Page</button>
        </div>
    </div>
</body>
</html>
