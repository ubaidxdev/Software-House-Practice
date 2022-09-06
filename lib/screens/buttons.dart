import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  onPrimary: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
              onPressed: () {
                print('Button Pressed');
              },
              icon: Icon(Icons.login),
              label: const Text(
                'Login Please',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
                style: TextButton.styleFrom(
                  primary: Colors.deepOrange,
                ),
                onPressed: () {
                  print('Text Button Pressed');
                },
                icon: Icon(Icons.cancel_outlined),
                label: Text('Cancel')),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                onLongPress: () {
                  print('Long Pressed');
                },
                onPressed: () {
                  Colors.deepOrange;
                  print('Subscribed');
                },
                icon: Icon(Icons.notifications),
                label: Text('Subscribe')),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print('Gradient Button');
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    // color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.purpleAccent,
                        Colors.deepOrangeAccent
                      ],
                    )),
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                      Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
