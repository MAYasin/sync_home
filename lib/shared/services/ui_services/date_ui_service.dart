class DateUiService {
  DateUiService();
  static String parseDate(DateTime isoString) {
    return "${isoString.day.toString()}-${isoString.month.toString().padLeft(2, '0')}-${isoString.year.toString().padLeft(2, '0')} ${isoString.hour.toString().padLeft(2, '0')}:${isoString.minute.toString().padLeft(2, '0')}";
  }
}
