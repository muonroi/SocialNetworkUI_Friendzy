import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_birthdate_screen/notifier/login_birthdate_notifier.dart';

final today = DateUtils.dateOnly(DateTime.now());
final config = CalendarDatePicker2Config();

class CustomBirthdateField extends StatefulWidget {
  const CustomBirthdateField({super.key, this.ref});
  final WidgetRef? ref;

  @override
  State<CustomBirthdateField> createState() => _CustomBirthdateFieldState();
}

class _CustomBirthdateFieldState extends State<CustomBirthdateField> {
  @override
  void initState() {
    _singleDatePickerValueWithDefaultValue = [
      DateTime.now(),
    ];
    super.initState();
  }

  late List<DateTime?> _singleDatePickerValueWithDefaultValue;
  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker2(
      config: config,
      value: _singleDatePickerValueWithDefaultValue,
      onValueChanged: (dates) => setState(() {
        _singleDatePickerValueWithDefaultValue = dates;
        if (widget.ref != null) {
          widget.ref?.read(loginBirthdateNotifier.notifier).updateBirthdate(
              _singleDatePickerValueWithDefaultValue[0] ?? DateTime.now());
        }
      }),
    );
  }
}
