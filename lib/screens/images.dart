import 'package:flutter/material.dart';


class images extends StatelessWidget {
  const images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Images'
        ),
      ),
      body: Row(
        children: [
          Image.network('https://images.unsplash.com/photo-1660167941111-f7ccce818728?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
            width: 300,
            height: 300 ,
          ),
          SizedBox(height: 20, ),
          
          Image.asset('images/image(3).jpg'),

        ],
      ),

    );
  }
}
