import 'package:flutter_modular/flutter_modular.dart';

import 'home.page.dart';

const String HOME_ROUTER = "/";

class HomeRoutings {
  static List<ModularRouter> routes = [
    ModularRouter(HOME_ROUTER, child: (_, args) => HomePage())
  ];
}
