String convertMinuteToTime(int? minute) {
  String time = "";

  if (minute == null || minute < 0 || minute > 1440) {
    return "";
  }

  String hourStr = "${minute ~/ 60}";
  String minStr = "${minute % 60}";

  if (minute ~/ 60 < 10) {
    hourStr = "0${minute ~/ 60}";
  }
  if (minute % 60 < 10) {
    minStr = "0${minute % 60}";
  }
  time = "$hourStr:$minStr";

  return time;
}
