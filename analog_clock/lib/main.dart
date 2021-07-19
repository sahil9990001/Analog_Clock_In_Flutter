import 'package:analog_clock/modals/theme_provider.dart';
import 'package:analog_clock/screens/home_screen.dart';
import 'package:analog_clock/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Analog Watch',
          darkTheme: darkThemeData(context),
          theme: themeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          // themeMode: ThemeMode.light,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
