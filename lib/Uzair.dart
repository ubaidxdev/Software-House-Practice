import 'package:flutter/material.dart';

class uzair extends StatelessWidget {
  const uzair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Muhammad Uzair")),
      ),
      body: Container(
        color: Colors.amber,
      ),
    ));
  }
}
