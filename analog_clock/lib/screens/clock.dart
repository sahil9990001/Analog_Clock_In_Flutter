import 'dart:async';
import 'dart:math';

import 'package:analog_clock/modals/theme_provider.dart';
import 'package:analog_clock/screens/clock_painter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: kShadowColor.withOpacity(0.15),
                        blurRadius: 64)
                  ]),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: ClockPainter(context, _dateTime),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Consumer<MyThemeModel>(
            builder: (context, theme, child) => GestureDetector(
                onTap: () => theme.changeTheme(),
                child: Icon(
                  theme.isLightTheme
                      ? Icons.wb_sunny_sharp
                      : Icons.nights_stay_sharp,
                  // height: 24,
                  // width: 24,
                  color: Theme.of(context).primaryColor,
                )),
          ),
        ),
      ],
    );
  }
}
