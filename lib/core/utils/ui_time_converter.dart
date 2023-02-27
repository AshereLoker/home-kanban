import 'package:home_challenge_kanban/core/utils/time_milliseconds_converter.dart';

class UiTimeConverter {
  static String getDisplayTime(int milliseconds) {
    final hours = TimeMillisecondsConverter.getHours(milliseconds)
        .toString()
        .padLeft(2, '0');
    final minutes = TimeMillisecondsConverter.getMinutes(milliseconds)
        .toString()
        .padLeft(2, '0');
    final seconds = TimeMillisecondsConverter.getSeconds(milliseconds)
        .toString()
        .padLeft(2, '0');

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
