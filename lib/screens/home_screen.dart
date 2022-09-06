//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
        elevation: 7,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.amber,
        // leading: Icon(Icons.menu),

        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share_sharp))],
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              label: 'Settings', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(
              label: 'Videos', icon: Icon(Icons.video_library)),
        ],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.purple,
              // borderRadius: BorderRadius.circular(16.0),
              shape: BoxShape.circle),
          child: Center(
              child: Container(
            child: Text(
              'Circle',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 14,
                decorationColor: Colors.white,
                fontSize: 40,
                fontStyle: FontStyle.italic,
                // backgroundColor: Colors.amber.shade50,
              ),
            ),
          )),
        ),
      ),
    );
  }
}
