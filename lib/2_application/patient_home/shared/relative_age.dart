import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

String sharedRelativeAge(String birthDate) {
  final DateTime currentTime = DateTime.now();
  final DateTime formattedBirthDate = DateFormat('yyyy-MM-dd').parse(birthDate);
  //todo: try/catch if formatting / parsing fails
  final Duration relativeAgeAsDuration =
      currentTime.difference(formattedBirthDate);
  return timeago.format(currentTime.subtract(relativeAgeAsDuration),
      locale: 'en_short'); //todo: update locale based on intl setting
}
