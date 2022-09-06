import 'package:flutter/material.dart';
import 'package:sabiha/model/contact_model.dart';
import 'package:sabiha/units/data_store.dart';

// class ContactsList extends StatelessWidget {
//   const ContactsList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var contacts = DataStore().contacts;
//
//     return Scaffold(
//       backgroundColor: Colors.black12,
//       appBar: AppBar(
//         title: const Text('My Contacts'),
//       ),
//       body: ListView.builder(
//           itemCount: contacts.length,
//           itemBuilder: (BuildContext context, int index) {
//             Contact contact = contacts[index];
//
//             return Card(
//               // child: ListTile(
//               //   title: Text('${contact.name}'),
//               //   subtitle: Text('${contact.number}'),
//               //   trailing:
//               //       Text(contact.email == null ? ' ' : '${contact.email}'),
//               // ),
//
//               child: Column(children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text('${contact.name}'),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text('${contact.number}'),
//                 ),
//                 Visibility(
//                   visible: contact.email == null ? false : true,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text('${contact.email}'),
//                   ),
//                 ),
//                 Visibility(
//                   visible: contact.address == null ? false : true,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text('${contact.address}'),
//                   ),
//                 ),
//               ]),
//             );
//           }),
//     );
//   }
// }
