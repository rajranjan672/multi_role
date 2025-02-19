import 'package:flutter/material.dart';
import 'package:multi_role/CRUD/all.dart';
import 'package:multi_role/PROFILE/profile.dart';



class DrawerBar extends StatefulWidget {
  // final String username;
  // final String profilePhoto;
  //
  // const DrawerBar({
  //   super.key,
  //   required this.username,
  //   required this.profilePhoto,
  // });

  @override
  _DrawerBarState createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  Widget _currentScreen = AllData();

  void _updateScreen(Widget screen) {
    setState(() {
      _currentScreen = screen;
    });
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          _currentScreen = AllData();

        case 1:
          _currentScreen = Profile();

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.data_array),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: '',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.man),
          //   label: '',
          // ),
          //
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.food_bank),
          //     label: ''
          // ),
          //
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.person_2_rounded),
          //     label: ''
          // )

        ],
      ),
    );
  }


}
