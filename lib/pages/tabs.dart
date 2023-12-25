import 'package:flutter/material.dart';
import 'package:flutter_application_p1/pages/workspace.dart';
import 'package:flutter_application_p1/pages/about.dart';

class Tabs extends StatefulWidget {
  Tabs({super.key});
  @override
  State<Tabs> createState() => _Tabs();
}

class _Tabs extends State<Tabs> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    const WorkSpace(),
    const About(),
  ];

  void _onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Title')),
      // body:Center(
      //   child:_widgetOptions.elementAt(selectedIndex)
      // ),
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'WorkSpace',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}
