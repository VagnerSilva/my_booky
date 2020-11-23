import 'package:flutter/material.dart';
import 'package:my_booky/app/layout/header/header.widget.dart';
import 'package:my_booky/app/shared/utils/app_size.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      appBar: HeaderWidget(),
      body: Builder(
        builder: (context) {
          var width = AppSize.screenWidth;
          return Container(
            width: width,
            child: Center(
              child: Text(width.toString()),
            ),
          );
        },
      ),
    );
  }
}
