import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.purple,
        elevation: 20,
      ),
      body: ListView(
        children: [
          Padding(
            // padding: const EdgeInsets.only(left: 20.0,top: 10.0,bottom: 10.0),
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Text(
                'My List'

            ),
          ),
          Card(
            child: ListTile(
              // isThreeLine: true,
              leading: Container(
                width: 100,
                height: 100,
                child: Center(child: Text('1')),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,


                ),

              ),
              trailing: Text('Trailing'),
              title: Text(
                'Title',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                ),
              ),
              subtitle: Text(
                'Subtitle'
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: Center(child: Text('1')),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,


                ),

              ),
              trailing: Text('Trailing'),
              title: Text(
                'Title',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20
                ),
              ),
              subtitle: Text(
                  'Subtitle'
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: Center(child: Text('1')),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,


                ),

              ),
              trailing: Text('Trailing'),
              title: Text(
                'Title',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20
                ),
              ),
              subtitle: Text(
                  'Subtitle'
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: Center(child: Text('1')),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,


                ),

              ),
              trailing: Text('Trailing'),
              title: Text(
                'Title',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20
                ),
              ),
              subtitle: Text(
                  'Subtitle'
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: Center(child: Text('1')),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,


                ),

              ),
              trailing: Text('Trailing'),
              title: Text(
                'Title',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20
                ),
              ),
              subtitle: Text(
                  'Subtitle'
              ),
            ),
          ),






        ],
      ),
    );
  }
}
