import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
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
  }
}
