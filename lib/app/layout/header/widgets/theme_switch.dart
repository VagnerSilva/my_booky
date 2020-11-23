import 'package:flutter/material.dart';
import 'package:my_booky/global/settings.dart';

class ThemeSwitch extends StatefulWidget {
  ThemeSwitch({Key key}) : super(key: key);

  @override
  _ThemeSwitchState createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  static const Color DARK_COLOR = Color(0xFF8A8A8A);
  static const Color LIGHT_COLOR = Color(0xFFFFFFFF);

  bool _isDark;

  @override
  void initState() {
    _isDark = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      margin: EdgeInsets.fromLTRB(0, 4, 16, 0),
      child: RawMaterialButton(
          onPressed: () {
            setState(() {
              changeThemeColor();
            });
          },
          fillColor: getThemeColor(),
          elevation: 1.0,
          child: Icon(
            Icons.brightness_medium_outlined,
            color: !_isDark ? DARK_COLOR : LIGHT_COLOR,
          ),
          shape: CircleBorder()),
    );
  }

  void changeThemeColor() {
    themeController.switchTheme();
  }

  Color getThemeColor() {
    _isDark = themeController.isDarkTheme;
    return _isDark ? DARK_COLOR : LIGHT_COLOR;
  }
}
