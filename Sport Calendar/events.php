<?php

    function connect(){
        $DBHOST="localhost";
        $DBUSER = "root";
        $DBPASS= "";
        $DBNAME = "sportcalendar";

        $conn = mysqli_connect($DBHOST,$DBUSER,$DBPASS,$DBNAME);
        if(!$conn) {
            echo "error";
        }
        return $conn;
    }

    function selectEvents($sport){
        $conn = connect();

        if($sport == "") {
            $sql = "SELECT * FROM `event` ORDER BY `eventTime`";
        }
        else 
        {
            $sql = "SELECT * FROM `event` where sport = '$sport' ORDER BY `eventTime`";
        }

        $events = mysqli_query($conn, $sql);
        $result = $events->fetch_all(MYSQLI_ASSOC);
        $conn->close();
        return $result;
    }

    function displayEvents($sport){
        $allEvents = "";

        foreach($sport as $s){
            $allEvents .= ' <tr class="calendar-row">
                                <td>'.$s["eventName"].'</td>
                                <td>'.$s["sport"].'</td>
                                <td>'.$s["team1"].' - '.$s["team2"].'</td>
                                <td>'.$s["eventTime"].'</td>
                                <td>'.$s["eventLocation"].'</td>
                            </tr>';
        }
        return $allEvents;
    }

    function sportSelection($sport){
        $conn = connect();

        $sql = "SELECT DISTINCT sport FROM `event`";
        

        $sport = mysqli_query($conn, $sql);
        $result = $sport->fetch_all(MYSQLI_ASSOC);
        $conn->close();
        return $result;
    }

    function displaySportSelection($sport){
        $allSports = "";

        foreach($sport as $s){
            $allSports .= '<option value="'.$s["sport"].'">'.$s["sport"].'</option>';
        }
        return $allSports;
    }

?>