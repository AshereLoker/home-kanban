/// [TimeMillisecondsConverter] convert from and to milliseconds.
/// Also converts obtained time to [String].
class TimeMillisecondsConverter {
  // Convert from milliseconds.

  // Seconds.
  // Get all seconds from milliseconds period.
  static int getRawSeconds(int milliseconds) => (milliseconds / 1000).floor();
  // Get only seconds range [0 - 59] from milliseconds period, at 1 minute = 0.
  static int getSeconds(int milliseconds) => (milliseconds % 60 / 1000).floor();

  // Minutes.
  // Get all minutes from milliseconds period.
  static int getRawMinutes(int milliseconds) =>
      (milliseconds / (60 * 1000)).floor();
  // Get minutes range [0 - 59] from milliseconds period, at 1 hour = 0.
  static int getMinutes(int milliseconds) =>
      (milliseconds / (60 * 1000) % 60).floor();

  // Hours.
  static int getHours(int milliseconds) =>
      (milliseconds / (60 * 60 * 1000)).floor();

  // Convert time to milliseconds.

  // Seconds.
  static int getMilliseconsFromSeconds(int seconds) => (seconds * 1000).floor();

  // Minutes.
  static int getMilliseconsFromMinutes(int minutes) =>
      (minutes * 60 * 1000).floor();

  // Hours.
  static int getMilliseconsFromHours(int hours) =>
      (hours * 60 * 60 * 1000).floor();

  // Convert time to String.

  // Whenever seconds, minutes or hours lenght less that 2 digits
  // add additional zero to String.

  // Seconds.
  // String all minutes from millisecond period.
  static String stringifyRawSecondsFromMilliseconds(int milliseconds) =>
      getRawSeconds(milliseconds).toString().padLeft(2, '0');
  // String only seconds range [0 - 59] from from millisecond period.
  static String stringifySecondsFromMilliseconds(int milliseconds) =>
      getSeconds(milliseconds).toString().padLeft(2, '0');

  // Minutes.
  // String all minutes from millisecond period.
  static String stringifyRawMinutesFromMilliseconds(int milliseconds) =>
      getRawMinutes(milliseconds).toString().padLeft(2, '0');
  // String only seconds range [0 - 59] from from millisecond period.
  static String stringifyMinutesFromMilliseconds(int milliseconds) =>
      getMinutes(milliseconds).toString().padLeft(2, '0');

  // Hours.
  static String stringifyHoursFromMilliseconds(int milliseconds) =>
      getHours(milliseconds).toString().padLeft(2, '0');

}
