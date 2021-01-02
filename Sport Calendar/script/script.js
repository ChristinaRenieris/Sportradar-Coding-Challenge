  function sortSport() {
      var sport = $("#sort").val();
      $.ajax({
          url: "sort.php",
          method: 'POST',
          data: { 'sport': sport },
          success: function(result) {
              console.log(result);
              $(".calendar-row").remove();
              $("#sportCalendar").append(result);
          }
      });
  }