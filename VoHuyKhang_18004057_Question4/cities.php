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
    <div><img src="./img/banner.gif" alt=""></div>
    <p>Choose a country, and we will show you its largest cities</p>
    <form action="show.php">
        <select name="country" id="country">
            <?php
            $query = mysqli_query(mysqli_connect('localhost','root','123456','wd02_cities'),"SELECT * FROM countries");
            while($row = mysqli_fetch_assoc($query)){
            ?>
            <option value="<?= $row['code'];?>"><?= $row['name'];?></option>

            <?php } ?>
        </select>
        <select name="top" id="top">
            <option value="3">top 3</option>
            <option value="4">top 4</option>
            <option value="6">top 6</option>
        </select>
        <input type="submit" id="query" value="Submit Query">
    </form>
</body>
</html>