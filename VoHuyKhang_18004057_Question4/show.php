<?php
if (!isset($_REQUEST['country'])) {
    // header("location: cities.php");
}

if (!isset($_REQUEST['top'])) {
    header("location: cities.php");
}

$country = $_REQUEST['country'];
$top = (int) $_REQUEST['top'];
$sql = "SELECT name,population FROM cities WHERE country_code = '$country' ORDER BY population DESC LIMIT $top";
$query = mysqli_query(mysqli_connect('localhost', 'root', '123456', 'wd02_cities'), $sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question 4</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div style="margin-top: 40px; font-weight: bold; font-size: 32px;">Top <?= $top ?> Biggest Cities</div>
    <table>
        <tr>
            <th>City</th>
            <th>Population</th>
        </tr>
        <?php while ($row = mysqli_fetch_array($query)) { ?>
            <tr>
                <td><?= $row['name'] ?></td>
                <td><?= $row['population'] ?></td>
            </tr>
        <?php } ?>
    </table>
</body>

</html>