import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker(
      initialDate: DateTime.now(),
      firstDate: DateTime(2023, 2, 1),
      lastDate: DateTime(2024, 2, 28),
      onDateChanged: (DateTime value) {},
    );
  }
}
