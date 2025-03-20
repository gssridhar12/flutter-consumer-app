import 'dart:developer';

/// To get cancel time
getCancelTime(DateTime bookedTime, DateTime eventTime) {
  var bookedTimeToMinute = convertTimeToMinutes(bookedTime);
  var eventTimeToMinute = convertTimeToMinutes(eventTime);

  var timeDifference = eventTimeToMinute - bookedTimeToMinute;
  log('time difference is $timeDifference');
  double countDownTime = timeDifference * 0.02;
  log('time percentage  is $countDownTime');

  return countDownTime.round();
}
/// To get scheduled time
getReScheduleTime(DateTime bookedTime, DateTime eventTime) {
  var bookedTimeToMinute = convertTimeToMinutes(bookedTime);
  var eventTimeToMinute = convertTimeToMinutes(eventTime);

  var timeDifference = eventTimeToMinute - bookedTimeToMinute;

  double countDownTime = timeDifference * 0.05;
  log('reschedule time is $countDownTime');

  return countDownTime.round();
}
/// Converting Hours to minutes
convertTimeToMinutes(DateTime dateTime) {
  log((dateTime.hour * 60 + dateTime.minute + dateTime.second / 60).toString());
  return dateTime.hour * 60 + dateTime.minute + dateTime.second / 60;
}
