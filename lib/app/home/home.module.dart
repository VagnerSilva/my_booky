import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_booky/app/home/home.page.dart';
import 'package:my_booky/app/home/home.routings.dart';
import 'package:my_booky/app/layout/theme/theme.controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => HomeRoutings.routes;

  static Inject get to => Inject<HomeModule>.of();
}
