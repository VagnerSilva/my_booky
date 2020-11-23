import 'package:flutter/material.dart';
import 'package:my_booky/app/layout/header/widgets/logo.widget.dart';
import 'package:my_booky/app/layout/header/widgets/theme_switch.dart';

class HeaderWidget extends StatefulWidget implements PreferredSizeWidget {
  HeaderWidget({Key key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("My Booky"),
      leading: Logo(),
      actions: [ThemeSwitch()],
    );
  }
}
