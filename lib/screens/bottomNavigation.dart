import 'package:flutter/material.dart';
import 'package:sabiha/screens/homeScreen.dart';
import 'package:sabiha/screens/home_screen.dart';
import 'package:sabiha/screens/list_contacts.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int current_index = 0;
  //  List<Widget> total_screen = [];
  var total_screen = [HomePage(), HomeScreen()];

  @override
  void initstate() {
    total_screen = [HomePage(),  HomeScreen()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: total_screen[current_index],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.purpleAccent,
          selectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
          currentIndex: current_index,
          selectedItemColor: Colors.orangeAccent,
          unselectedItemColor: Colors.purple,
          showUnselectedLabels: true,
          backgroundColor: Colors.black26,
          iconSize: 30.0,
          selectedFontSize: 18.0,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "Email",
              icon: Icon(
                Icons.email,
              ),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(
                Icons.settings,
              ),
            ),
            BottomNavigationBarItem(
              label: "Menu",
              icon: Icon(
                Icons.menu,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              current_index = index;
            });
          }),
    ));
  }
}
