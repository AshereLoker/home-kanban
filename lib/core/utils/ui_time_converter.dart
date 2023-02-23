import 'package:home_challenge_kanban/core/utils/time_milliseconds_converter.dart';

class UiTimeConverter {
  static String getDisplayTime(int milliseconds) {
    final hours = TimeMillisecondsConverter.stringifyHoursFromMilliseconds(
      milliseconds,
    );
    final minutes = TimeMillisecondsConverter.stringifyMinutesFromMilliseconds(
      milliseconds,
    );
    final seconds = TimeMillisecondsConverter.stringifySecondsFromMilliseconds(
      milliseconds,
    );

    return '$hours:$minutes:$seconds';
  }

  static int getMillisecondsFromTime(String time) {
    int milliseconds = 0;
    final separedTime = time.split(':');
    final hours = int.parse(separedTime[0]);
    final minutes = int.parse(separedTime[1]);
    final seconds = int.parse(separedTime[2]);

    milliseconds += TimeMillisecondsConverter.getMilliseconsFromHours(hours);
    milliseconds += TimeMillisecondsConverter.getMilliseconsFromMinutes(
      minutes,
    );
    milliseconds += TimeMillisecondsConverter.getMilliseconsFromSeconds(
      seconds,
    );

    return milliseconds;
  }
}
