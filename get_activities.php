<?php
// Set content type header to tell the client the response is JSON
header('Content-Type: application/json');

// 1. Database Connection Details
$host = 'localhost';
$user = 'root'; // Default XAMPP username
$pass = '';     // Default XAMPP password (no password)
$db = 'fitness_flow'; // The name you chose in Step 2

// 2. Establish Connection
$conn = new mysqli($host, $user, $pass, $db);

// Check connection
if ($conn->connect_error) {
    // Return an error message to the client
    http_response_code(500);
    echo json_encode(["error" => "Database connection failed: " . $conn->connect_error]);
    exit();
}

// 3. Get the 'day' parameter from the URL query string
// Example URL: http://localhost/fitness-app/api/get_activities.php?day=monday
$day_name = isset($_GET['day']) ? strtolower($_GET['day']) : '';

if (empty($day_name)) {
    http_response_code(400);
    echo json_encode(["error" => "Missing 'day' parameter."]);
    exit();
}

// 4. Prepare and Execute the SQL Query
// Use a Prepared Statement to prevent SQL Injection (CRITICAL SECURITY STEP)
$sql = "
    SELECT A.activity_name, A.duration_minutes, A.image_url, A.description
    FROM Activities A
    JOIN Days D ON A.day_id = D.day_id
    WHERE D.day_name = ?
";

$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $day_name);
$stmt->execute();
$result = $stmt->get_result();

$activities = [];

// 5. Fetch all results into an associative array
while($row = $result->fetch_assoc()) {
    $activities[] = $row;
}

// 6. Close connection and output JSON
$stmt->close();
$conn->close();

echo json_encode($activities);

?>