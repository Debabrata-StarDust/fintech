import 'package:fintech/core/app_color.dart';
import 'package:fintech/view/tarnsactions_history.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'pages/homepage.dart';

class Bottom_Nav_Bar extends StatefulWidget {
  const Bottom_Nav_Bar({super.key});

  @override
  State<Bottom_Nav_Bar> createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _screens() {
    return [
      const HomePage(),
      const Center(child: Text("Status")),
      const Center(child: Text("Scan")),
      const TransactionsHistory(),
      const Center(child: Text("profile")),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _screens(),
      items: _navBarItem(),
      confineInSafeArea: true,
      stateManagement: true,
      navBarStyle: NavBarStyle.style6,
    );
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        // icon: Image.asset(
        //   "assets/icons/house-chimney.png",
        //   width: 50,
        // ),
        title: "Home",
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.auto_graph),
        title: "Stats",
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.scanner),
        title: "Scan",
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.card_travel),
        title: "My card",
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_outlined),
        title: "Profile",
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
