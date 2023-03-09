import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'content/hoteis.dart';
import 'content/pacotes.dart';
import 'content/voos.dart';
import 'widgets/home_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xffffffff),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/img/zupper_logo.svg",
                color: const Color(0xff009daf),
                width: 180.0,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            color: const Color(0xff008c99),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                DefaultTabController(
                  length: 3,
                  child: HomeTabBar(),
                ),
              ],
            ),
          ),
          const TabBarView(
            children: [
              Voos(),
              Hoteis(),
              Pacotes(),
            ],
          ),
        ],
      ),
    );
  }
}
