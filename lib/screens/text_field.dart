import 'package:flutter/material.dart';

 class Text_field extends StatefulWidget {
   const Text_field({Key? key}) : super(key: key);

  @override
  State<Text_field> createState() => _Text_fieldState();
}

class _Text_fieldState extends State<Text_field> {

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  SizedBox fixheight = SizedBox(height: 20,);
  SizedBox fixwidth = SizedBox(width: 20,);
  var fullName = 'Full Name';

   @override
   Widget build(BuildContext context) {

     return Scaffold(
       appBar: AppBar(
         title: const Text('Text Field'),
       ),
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             children: [
               TextField(
                 controller: firstNameController,
                 decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.greenAccent, width: 2.0,                     )
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.purpleAccent, width: 2.0)
                   ),
                   hintText: 'First Name',

                   labelText: 'First Name',
                   labelStyle: TextStyle(
                     color: Colors.green.shade100,
                     fontSize: 28,
                     fontWeight: FontWeight.bold
                   ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide: const BorderSide(
                         color: Colors.purple,
                         width: 8,
                         style: BorderStyle.solid)
                   ),
                   hintStyle: TextStyle(
                     fontStyle: FontStyle.italic,
                     color: Colors.black26,
                   ),
                   prefixIcon: Icon(Icons.person),


                 ),
                 maxLength: 15,
                 keyboardType: TextInputType.name,
               ),
               fixheight,
               TextField(


                 controller: lastNameController,
                 decoration: InputDecoration(

                   //Border Style
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.purpleAccent, width: 2.0),
                   ),
                   hintText: 'Last Name',
                   labelText: 'Last Name',
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                       borderSide:  BorderSide(
                           color:const Color(0xFF000000),
                           width: 8,
                           style: BorderStyle.solid)
                   ),
                   hintStyle: TextStyle(
                     fontStyle: FontStyle.italic,
                     color: Colors.black26,
                   ),
                   prefixIcon: Icon(Icons.person),


                 ),
                 maxLength: 15,
                 keyboardType: TextInputType.name,
               ),
               fixheight,
               Row(

                 children: [
                   Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.greenAccent,
                       onPrimary: Colors.white70,
                       textStyle: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold
                       )
                     ),
                     child: Text('Reset'),
                     onPressed: (){
                       firstNameController.clear() ;
                       lastNameController.clear();
                     },
                      )),
                   fixwidth,
                   Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.greenAccent,
                         onPrimary: Colors.white70,
                         textStyle: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold
                         )
                     ),
                     child: const Text('Combine'),
                     onPressed: (){
                       var firstName = firstNameController.text;
                       var lastName = lastNameController.text;

                       fullName = "$firstName  $lastName";

                       // if(firstName.isNotEmpty && lastName.isNotEmpty){
                       //   int n1 = int.parse(firstName);
                       //   int n2 = int.parse(lastName);
                       //
                       //   var sum = n1 + n2;
                       //   setState(() {
                       //     fullName = sum.toString();
                       //   });
                       //
                       // }else{
                       // }


                       setState(() {

                       });

                     },
                   )),
                   fixwidth,


                 ],

               ),
               fixheight,

               Text(fullName),
             ],
           ),
         ),
       ),
     );
   }
}

// class Fluttertoast {
// }
