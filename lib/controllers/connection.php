<?php 

// Define server host name
$HostName = 'localhost';

// Define MySQL Database username
$HostUser = 'root';

// Define MySQL Database password
$HostPassword = '';

// Define MySQL Database Name

$DatabaseName = 'ideamart';

// Define MySQL Connection
$con = mysqli_connect($HostName, $HostUser, $HostPassword, $DatabaseName);

// Get received JSON to JSON var
$json = file_get_contents('php://input');

// Decode JSON and store to OBJ var
$obj = json_decode($json, true);

// Get user phone number from databases and store it to PHONE var
$phone = $obj['phone'];

// Get user password from databases and store it to PASSWORD var
$password = $obj['password'];

// Define login query using PHONE and PASSWORD
$loginQuery = "SELECT * FROM user WHERE phone = '$phone' AND password = '$password' ";

// Execute MySQL Query
$check = mysqli_fetch_array(mysqli_query($con, $loginQuery));

if (isset($check)) {
    // When phone and password match
    $onLoginSuccess = 'Successfull !';
    
    // Convert message to JSON
    $SuccessMsg = json_encode($onLoginSuccess);

    // Print message
    echo $SuccessMsg;
}

else {
    // When phone and password doesn't match
    $onLoginFailed = 'Failed to connect, please try again :(';

    // Convert message to JSON
    $invalidMsg = json_encode($onLoginFailed);

    // Print message
    echo $onLoginFailed;
}

mysqli_close($con);
?>