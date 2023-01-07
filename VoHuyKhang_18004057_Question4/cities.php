<!DOCTYPE html>
<html>
   <!--
   CSE 190M, Section 9: Queries
   -->

  <head>
     <title>City Searcher</title>
     <link href="style.css" type="text/css" rel="stylesheet" />
  </head>


  <body>
      <div>
         <img src="./img/banner.gif" alt="City Searcher" />
      </div>

      <p>
         Choose a country, and we will show you its largest cities.
      </p>

      <form action="show.php">
         <select name="countrycode">
            <?php
            $sql = "SELECT * FROM `countries`";
            $query = mysqli_query(mysqli_connect('localhost', 'root', '123456', 'wd02_cities'), $sql);
            while ($row = mysqli_fetch_assoc($query)) {
               ?>
               <option value="<?= $row['code'] ?>"><?= $row['name'] ?></option>
               <?php } ?>
         </select>
         <select name="count">
            <option id="top" value="3">top 3</option>
            <option id="top" value="5">top 5</option>
            <option id="top" value="10">top 10</option>
         </select>
         <input type="submit" id="query" value="Submit Query" />
      </form>
   </body>
</html>