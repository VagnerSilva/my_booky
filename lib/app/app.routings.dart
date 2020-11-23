import 'package:flutter_modular/flutter_modular.dart';

import 'home/home.module.dart';

class AppRoutings {
  static List<ModularRouter> routers = [
    ModularRouter('/', module: HomeModule()),
  ];
}
