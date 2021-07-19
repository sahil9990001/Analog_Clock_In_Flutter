import 'package:analog_clock/screens/clock.dart';
import 'package:analog_clock/screens/time_in_hour_and_minutes.dart';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Gwalior, India | IST',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinutes(),
          Clock()
        ],
      ),
    );
  }
}
