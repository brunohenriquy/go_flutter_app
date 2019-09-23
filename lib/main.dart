import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_flutter_app/themes.dart';
import 'package:go_flutter_app/ui/screens/home_screen.dart';
import 'package:go_flutter_app/ui/screens/profile_screen.dart';
import 'package:go_flutter_app/ui/screens/settings_screen.dart';

import 'helpers/file_helper.dart';

void main() async {
  MyThemeKeys _themeKey = MyThemeKeys.LIGHT;

  String _data = await FileHelper.readData();

  if (_data != null) {
    String themeKeyString = json.decode(_data);

    if (themeKeyString != null && themeKeyString.isNotEmpty) {
      MyThemeKeys themeFound = MyThemes.getThemeKeyFromString(themeKeyString);
      if (themeFound != null) {
        _themeKey = themeFound;
      }
    }
  }

  runApp(CustomTheme(initialThemeKey: _themeKey, child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.of(context),
      home: HomeScreen(),
      routes: {
        "/profile": (context) => ProfileScreen(),
        "/settings": (context) => SettingsScreen(),
      },
    );
  }
}
