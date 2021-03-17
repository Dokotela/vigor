import 'package:in_date_utils/in_date_utils.dart';

class VaxDate extends DateTime {
  VaxDate(int year, int month, int day) : super(year, month, day);

  VaxDate.fromString(String? date)
      : super(
          DateTime.tryParse(date ?? '')?.year ?? 2999,
          DateTime.tryParse(date ?? '')?.month ?? 12,
          DateTime.tryParse(date ?? '')?.day ?? 31,
        );

  VaxDate.dt(DateTime dateTime)
      : super(dateTime.year, dateTime.month, dateTime.day);

  VaxDate.now() : super.now();

  VaxDate.min() : super(1900, 1, 1);

  VaxDate.max() : super(2999, 12, 31);

  VaxDate.yyyymmdd(String date)
      : super(
          int.tryParse(date.substring(0, 4)) ?? 1900,
          int.tryParse(date.substring(4, 6)) ?? 01,
          int.tryParse(date.substring(6, 8)) ?? 01,
        );

  VaxDate.fromJson(String date)
      : super(DateTime.parse(date).year, DateTime.parse(date).month,
            DateTime.parse(date).day);

  String toJson() => toString();

  VaxDate fromNullableString(String date) =>
      date == '' ? this : VaxDate.yyyymmdd(date);

  VaxDate minIfNull(String dateChange) =>
      dateChange == '' ? VaxDate(1900, 1, 1) : change(dateChange);

  VaxDate maxIfNull(String dateChange) =>
      dateChange == '' ? VaxDate(2999, 12, 31) : change(dateChange);

  bool operator <(VaxDate vaxDate) {
    return DateTime(year, month, day)
        .isBefore(DateTime(vaxDate.year, vaxDate.month, vaxDate.day));
  }

  bool operator >(VaxDate vaxDate) {
    return DateTime(year, month, day)
        .isAfter(DateTime(vaxDate.year, vaxDate.month, vaxDate.day));
  }

  bool operator <=(VaxDate vaxDate) {
    return DateTime(year, month, day)
            .isBefore(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)) ||
        DateTime(year, month, day).isAtSameMomentAs(
            DateTime(vaxDate.year, vaxDate.month, vaxDate.day));
  }

  bool operator >=(VaxDate vaxDate) {
    return DateTime(year, month, day)
            .isAfter(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)) ||
        DateTime(year, month, day).isAtSameMomentAs(
            DateTime(vaxDate.year, vaxDate.month, vaxDate.day));
  }

  bool isEqualTo(VaxDate vaxDate) {
    return DateTime(year, month, day)
        .isAtSameMomentAs(DateTime(vaxDate.year, vaxDate.month, vaxDate.day));
  }

  VaxDate change(String howMuch) =>
      howMuch == '' ? this : _parseDateString(howMuch);

  VaxDate changeIfNotNull(String howMuch) =>
      howMuch == '' ? this : change(howMuch);

  VaxDate _parseDateString(String change) {
    var years = 0, months = 0, weeks = 0, days = 0, posNeg = 1;
    var time = change.split(' ');
    for (var i = 0; i < time.length; i++) {
      if (i > 1) {
        if (time[i - 2] == '-') {
          posNeg = -1;
        } else {
          posNeg = 1;
        }
      }
      if (time[i].contains('year')) {
        years += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('month')) {
        months += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('week')) {
        weeks += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('day')) {
        days += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
    }
    return _calculateTime(years, months, 7 * weeks + days);
  }

  VaxDate _calculateTime(int years, int months, int days) {
    var newDate = DateTime(year + years, month + months, 1);
    if (DateUtils.lastDayOfMonth(newDate).day < day) {
      newDate = DateTime(newDate.year, newDate.month + 1, 1);
    } else {
      newDate = DateTime(newDate.year, newDate.month, day);
    }
    return VaxDate(newDate.year, newDate.month, newDate.day + days);
  }
}

VaxDate latestOf(List<VaxDate> dates) {
  VaxDate latest = VaxDate(1900, 01, 01);
  for (final date in dates) {
    latest = latest > date ? latest : date;
  }
  return latest;
}

VaxDate earliestOf(List<VaxDate> dates) {
  VaxDate earliest = VaxDate(2999, 01, 01);
  for (final date in dates) {
    earliest = earliest < date ? earliest : date;
  }
  return earliest;
}
