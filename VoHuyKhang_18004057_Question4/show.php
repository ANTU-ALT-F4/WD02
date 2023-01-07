<?php


# check for query params
if (!isset($_REQUEST["countrycode"])) {
   header("Location: cities.php");
   die("Error: no country code specified");
}
if (!isset($_REQUEST["count"])) {
   header("Location: cities.php");
   die("Error: no count specified");
}

$country_code = $_REQUEST["countrycode"];
$count = (int) $_REQUEST["count"];

$query = "SELECT name, population
          FROM cities
          WHERE country_code = '$country_code'
          ORDER BY population DESC
          LIMIT $count";
$results = mysqli_query(mysqli_connect('localhost', 'root', '123456', 'wd02_cities'),$query);
?>

<!DOCTYPE html>
<html>
   <head>
      <title>City Searcher - Results</title>
     <link href="./style.css" type="text/css" rel="stylesheet" />
   </head>


   <body>
      <h1> Top <?= $count ?> Biggest Cities </h1>
      
      <table>
         <tr>
            <th>City</th> 
            <th>Population</th>
         </tr>
         
         <?php
         while ($row = mysqli_fetch_array($results)) {
            ?>

               <tr>
                  <td> <?= $row["name"] ?> </td>
                  <td> <?= $row["population"] ?> </td>
               </tr>

            <?php
         }
         ?>

      </table>
   </body>
</html>