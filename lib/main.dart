import 'package:flutter/material.dart';
import 'package:sabiha/Uzair.dart';
import 'package:sabiha/screens/bottomNavigation.dart';
import 'package:sabiha/screens/buttons.dart';
import 'package:sabiha/screens/dialougs.dart';
import 'package:sabiha/screens/gridView.dart';
import 'package:sabiha/screens/homeScreen.dart';
import 'package:sabiha/screens/home_screen.dart';
import 'package:sabiha/screens/images.dart';
import 'package:sabiha/screens/list_contacts.dart';
import 'package:sabiha/screens/row_column.dart';
import 'package:sabiha/screens/ListView.dart';
import 'package:sabiha/screens/statful_widget.dart';
import 'package:sabiha/screens/text_field.dart';

import 'screens/multiplication_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sir Abid',
        theme: ThemeData(primaryColor: Colors.purple),
        home:
        // uzair()
        // MultiplyApp()
        Text_field()
        // state_full()
        // Buttons()
        // Grid_View()
        // Dialougs()
        // ContactsList()
        // ListView1()
        // images(),
        // row_column()
        // HomeScreen(),
        // HomePage()
        //  BottomnaBvigation()

        );
  }
}
