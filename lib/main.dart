import 'package:flutter/material.dart';
import 'package:go_flutter_app/themes.dart';
import 'package:go_flutter_app/ui/screens/home_screen.dart';
import 'package:go_flutter_app/ui/screens/profile_screen.dart';
import 'package:go_flutter_app/ui/screens/settings_screen.dart';

void main() => runApp(CustomTheme(initialThemeKey: MyThemeKeys.LIGHT ,child: MyApp()));

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
