import 'package:flutter/material.dart';
import 'package:flutter_networth_app/screens/info.dart';
import 'package:flutter_networth_app/screens/mina_rundor.dart';
import 'package:flutter_networth_app/screens/speltips.dart';
import 'package:flutter_networth_app/screens/start.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  var assetAmount = 0;
  var liabilitiesAmount = 0;

  void setAssetAmount(int asset) {
    setState(() {
      assetAmount = asset;
    });
  }

  void setLiabilitiesAmount(int liabilities) {
    setState(() {
      liabilitiesAmount = liabilities;
    });
  }

  final screens = [
    StartPage(),
    MinaRundor(),
    Speltips(),
    Info(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("BangolfAppen"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Start',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.score),
            label: 'Mina rundor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: 'Speltips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffefae28),
        //onTap: _onItemTapped,
      ),
    );
  }
}
