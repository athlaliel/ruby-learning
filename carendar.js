var year = 2018;
var month = 5;

window.onload = function() {
  console.log(get_month_calendar(year, month));
}

function get_month_calendar(year, month) {
  var firstDate = new Date(year, (month - 1), 1);
  var lastDay = new Date(year, (firstDate.getMonth() + 1), 0).getDate();
  var weekday = firstDate.getDay();

  var calendarData = [];
  var weekdayCount = weekday;
  for (var i = 0; i < lastDay; i++) {
      calendarData[i] = {
          day: i + 1,
          weekday: weekdayCount
      }

      if(weekdayCount >= 6) {
          weekdayCount = 0;
      } else {
        weekdayCount++;
      }
  }
  return calendarData;
}