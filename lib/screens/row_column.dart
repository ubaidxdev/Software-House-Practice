import 'package:flutter/material.dart';

class row_column extends StatelessWidget {
  const row_column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rows and Columns"
        ),
      ),
      body: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crosbsAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              color: Colors.purple,

              width: 100,
              height: 20,
              child: Center(
                child: Text(
                  'Purple'
                ),
              ),
            ),
            Container(
              color: Colors.pink,
              width: 100,
              height: 20,
            ),
            Container(
              color: Colors.pinkAccent,
              width: 100,
              height: 20,
            ),
            Container(
              color: Colors.purpleAccent,
              width: 100,
              height: 20,
            ),
          ],
        ),
      ),

    );
  }
}
