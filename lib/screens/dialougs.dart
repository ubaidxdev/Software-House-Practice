import 'package:flutter/material.dart';

// class Dialougs extends StatelessWidget {
//   const Dialougs({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Dialougs'
//         ),
//
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(onPressed: (){}, child: Text(
//               'Save'
//             ))
//           ],
//         ),
//       ) ,
//     );
//   }
// }
class Dialougs extends StatefulWidget {
  const Dialougs({Key? key}) : super(key: key);

  @override
  State<Dialougs> createState() => _DialougsState();
}

class _DialougsState extends State<Dialougs> {
  final snackBar = SnackBar(
      content: Text('Successfully saved'),
    backgroundColor: Colors.purple.withOpacity(0.5),
    duration: Duration(seconds: 2),
    action: SnackBarAction(
          label: 'Undo',
          onPressed: (){}
      ),


    
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(snackBar); 
                },
                child: Text(
                  'Save'
                )
            )
          ],
        ),
      ),
    );
  }
}

