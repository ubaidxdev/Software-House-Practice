import 'package:flutter/material.dart';

class state_full extends StatefulWidget {
  const state_full({Key? key}) : super(key: key);

  @override
  State<state_full> createState() => _state_fullState();
}

class _state_fullState extends State<state_full> {
  var message = "Hello Flutter";
  SizedBox fixheight = SizedBox(
    height: 20,
  );
  Color bgColor = Colors.amber;
  var counter = 0;
  var switchOn = false;

  @override
  Widget build(BuildContext context) {
    print('Build Executed');
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('Statefull widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(message),
            fixheight,
            ElevatedButton.icon(
              onPressed: () {
                message = 'Welcome to Flutter';
                setState(() {});
              },
              icon: Icon(Icons.arrow_forward),
              label: const Text('Login Please'),
            ),
            fixheight,
            ElevatedButton(
                onPressed: () {
                  bgColor = Colors.purpleAccent;
                  setState(() {});
                },
                child: Text('Purple')),
            fixheight,
            ElevatedButton(
                onPressed: () {
                  bgColor = Colors.greenAccent;
                  setState(() {});
                },
                child: Text('Green')),
            fixheight,
            ElevatedButton(
                onPressed: () {
                  bgColor = Colors.cyanAccent;
                  setState(() {});
                },
                child: Text('Cyan')),
            fixheight,
            ElevatedButton(
                onPressed: () {
                  bgColor = Colors.white;
                  setState(() {});
                },
                child: Text('Reset')),
            fixheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: const Text('-')),
                Text('$counter'),
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Text('+')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Dark Mode'),
                Switch(
                    value: switchOn,
                    onChanged: (bool isChecked) {
                      setState(() {
                        if (isChecked) {
                          switchOn = true;
                          bgColor = Colors.black87.withOpacity(0.4);
                        } else {
                          switchOn = false;
                          bgColor = Colors.white;
                        }
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
