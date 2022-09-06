import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),

      ),
      body:
        Center(
          child: Container(
            width: 200,
            height: 200,

            margin: EdgeInsets.all(20),
            padding: RenderErrorBox.padding,
            decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  // color: Colors.grey.withOpacity(0.5),
                  // spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0,5)


                )
              ],
              // color: Colo/rs.teal.withOpacity(0.789),
                gradient: LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.pinkAccent,
                    Colors.orangeAccent
                  ],
                  begin: Alignment.topLeft,
                ),
              // image: AsseImage('assets/images/photo.jpg'),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                style: BorderStyle.solid,
                color: Colors.black,
                width: 13.0
              ),
            ),
            child:
            FlutterLogo(
              size: 100,

            ),
          ),
        ),


    //     Text(
    //     'Flutter is Awesome',
    //     style: TextStyle(
    //       color: Colors.teal,
    //       fontSize: 40,
    //       fontWeight: FontWeight.bold,
    //       fontStyle: FontStyle.italic,
    //
    //
    //     ),
    // ),
    );
  }
}
