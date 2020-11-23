import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'layout/theme/theme.widget.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();

    return Observer(
        // name to show in case of error
        name: "Default_Theme",
        builder: (_) {
          return MaterialApp(
            theme: theme.defaultTheme(),
            debugShowCheckedModeBanner: false,
            // set your initial route
            initialRoute: "/",
            navigatorKey: Modular.navigatorKey,
            // add Modular to manage the routing system
            onGenerateRoute: Modular.generateRoute,
          );
        });
  }
}
