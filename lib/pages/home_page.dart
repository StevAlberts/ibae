import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './profile_page.dart';
import './settings_page.dart';
import './logs_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 1;
  final _widgetOptions = [
    SettingsPage(),
    ProfilePage(),
  ];

  Widget _buildFAB(){
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => LogsPage(),
              fullscreenDialog: true,
            ));
        //changeBrightness();
      },
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      elevation: 15.0,
      isExtended: true,
      label: const Text(
        'Symptoms',
        style: TextStyle(color: Colors.white),
      ),
    );
  }


  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//    initPlatformState();
  }

//  Future<void> initPlatformState() async {
//    await FlutterStatusbarManager.setFullscreen(true);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
//      bottomNavigationBar: BottomNavigationBar(
//        currentIndex: _selectedIndex,
//        onTap: _onItemTapped,// this will be set when a new tab is tapped
//        items: [
//          BottomNavigationBarItem(
//            icon: new Icon(Icons.person_outline),
//            title: new Text('Profile'),
//          ),
//          BottomNavigationBarItem(
//            icon: new Icon(Icons.track_changes),
//            title: new Text('Home'),
//          ),
//        ],
//
//      ),
      floatingActionButton: _buildFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
}
