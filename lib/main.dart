import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zupper/routes.dart';

import 'ui/pages/home/content/hoteis.dart';
import 'ui/pages/home/content/pacotes.dart';
import 'ui/pages/home/content/voos.dart';
import 'ui/pages/home/widgets/home_tab_bar.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Zupper',
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(ZpRoutes.home, child: (context, args) => const MyApp()),
      ];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  TabBar get _tabBar => const TabBar(
        tabs: [
          Tab(
            icon: Icon(
              Icons.flight,
              color: Color(0xffd4e9ea),
              size: 24.0,
            ),
            text: 'Voos',
          ),
          Tab(
            icon: Icon(
              Icons.hotel,
              color: Color(0xffd4e9ea),
              size: 30.0,
            ),
            text: 'Hotéis',
          ),
          Tab(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xffd4e9ea),
              size: 36.0,
            ),
            text: 'Pacotes',
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffffffff),
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: const Color(0xff008c99),
                child: _tabBar,
              ),
            ),
            title: SvgPicture.asset(
              "assets/img/zupper_logo.svg",
              color: const Color(0xff009daf),
              width: 180.0,
              height: 50.0,
            ),
          ),
          body: const TabBarView(
            children: [
              Voos(),
              Hoteis(),
              Pacotes(),
            ],
          ),
        ),
      ),
    );
  }
}
