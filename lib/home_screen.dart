import 'package:flutter/material.dart';
import 'package:keme/places_tab.dart';
import 'package:keme/setting_tab.dart';
import 'camera_tab.dart';
import 'map_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.place, color: Colors.orangeAccent,),
              label: "Places"),
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined, color: Colors.orangeAccent),
              label: "Map"),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera, color: Colors.orangeAccent),
              label: "Camera"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.orangeAccent),
              label: "Setting"),
        ],
      ),

    );
  }

  var tabs = [
    PlacesTab(),
    MapTab(),
    CameraTab(),
    SettingTab(),
  ];
}

