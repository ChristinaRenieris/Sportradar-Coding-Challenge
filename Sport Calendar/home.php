<?php include("events.php"); 

    $allsports = "";
    $display = selectEvents($allsports);
    $showEvents = displayEvents($display);

    $sport = "";
    $sportselection = sportSelection($sport);
    $sportList = displaySportSelection($sportselection);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/style.css">
    <title>SportCalendar</title>
</head>
<body>
    <div class="topnav">
        <a href="#home">Home</a>
        <a href="#news">News</a>
        <a class="active" href="#news">Sport Calendar</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
    </div>

    <div class="main-wrapper">
        <div class="table-wrapper">
            <h2 class="text-center m-5 text-white">Sport Calendar 2021</h2>

            <div class="text-right">
                <label>Show  :</label>
                <select name="sport" id="sort">
                    <option value="default">All</option>

                    <?= $sportList?>

                </select>
                <input type="submit" onclick="sortSport()" value="Submit">
            </div>
            

            <table id="sportCalendar">
                <tr class="h5">
                    <th>Event</th>
                    <th>Sport</th>
                    <th>Teams</th> 
                    <th>Date & Time</th>
                    <th>Location</th>
                </tr>

                <?= $showEvents?>

            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>
    <script src="script/script.js"></script>
</body>
</html>