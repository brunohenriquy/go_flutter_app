import 'package:flutter/material.dart';

import '../../themes.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Homepage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _changeTheme(context, MyThemeKeys.LIGHT);
                },
                child: Text("Light"),
              ),
              RaisedButton(
                onPressed: () {
                  _changeTheme(context, MyThemeKeys.DARK);
                },
                child: Text("Dark"),
              ),
              RaisedButton(
                onPressed: () {
                  _changeTheme(context, MyThemeKeys.DARKER);
                },
                child: Text("Darker"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
