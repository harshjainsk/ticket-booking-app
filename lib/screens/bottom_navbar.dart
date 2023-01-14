import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  static final List<Widget>_widgetOptions = <Widget>[
  const Text("Home"),
  const Text("search"),
  const Text("Tickets"),
  const Text("Profile"),
  ];
// <Widget>[]

  void _onItemTap(int index){
    selectedIndex = index;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My tickets')),
      ),
      body: Center(child: _widgetOptions[selectedIndex]),

      bottomNavigationBar :BottomNavigationBar(
        onTap: _onItemTap,
        // elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels:false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'home'
          ),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'search'
          ),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled), label: 'ticket'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label: 'Profile')
        ],
      ),
    );
  }
}
