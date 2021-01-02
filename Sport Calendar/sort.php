<?php
    include('events.php');

    if($_POST) {
        if($_POST['sport'] == "default"){
            $allsports = "";
            $events = selectEvents($allsports);
            $showEvents = displayEvents($events);
            echo $showEvents;
        }
        else{
            $events = selectEvents($_POST["sport"]);
            $showEvents = displayEvents($events);
            echo $showEvents;

        }
    }
?>