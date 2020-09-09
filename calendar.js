var year = 2018;
var month = 5;

window.onload = function() {
    var data = generate_month_calendar(year, month);
    document.getElementById('calendar').appendChild(data);
}

function generate_month_calendar(year, month) {
    var weekdayData = ['日', '月', '火', '水', '木', '金', '土'];

    var calendarData = get_month_calendar(year, month);

    var i = calendarData[0]['weekday'];

    while(i > 0) {
        i--;
        calendarData.unshift({
            day: '',
            weekday: i
        });
    }
    var i = calendarData[calendarData.length - 1]['weekday'];
    while(i < 6) {
        i++;
        calendarData.push({
            day: '',
            weekday: i
        });
    }
    var cTable = document.createElement('table');
    cTable.className = 'calendar-table';

    var insertData = '';

    insertData += '<thead>';
    insertData += '<tr>';
    for (var i = 0; i < weekdayData.length; i++) {
        insertData += '<th>';
        insertData += weekdayData[i];
        insertData += '</th>';
    }
    insertData += '</tr>';
    insertData += '</thead>';

    //日付生成
    insertData += '<tbody>';
    for (var i = 0; i < calendarData.length; i++) {
        if(calendarData[i]['weekday'] <= 0) {
            insertData += '<tr>';
        }
        insertData += '<td>';
        insertData += calendarData[i]['day'];
        insertData += '</td>';
        if(calendarData[i]['weekday'] >= 6) {
            insertData += '</tr>';
        }
    }
    insertData += '</tbody>';

    cTable.innerHTML = insertData;
    return cTable;
}

// /**
//  * 指定した年月のカレンダー情報を返す
// //  * @param {number} year  - 年の指定
// //  * @param {number} month - 月の指定
//  */

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