import 'package:flutter/material.dart';
import 'package:sabiha/model/contact_model.dart';
import 'package:sabiha/units/data_store.dart';
import 'package:sabiha/widgets/item_container_widget.dart';

class Grid_View extends StatelessWidget {
  const Grid_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
           itemCount: DataStore.images.length,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
            ),
            itemBuilder:(BuildContext context, int index){
             //Contact contact = DataStore.contacts[index];
              String image = DataStore.images[index];
              return Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,

                ),
                child:
                 Image.asset(image, height: double.infinity,width: double.infinity,),
                // Column(
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                //     Text(contact.name),
                //     SizedBox(height: 8),
                //     Visibility(
                //         visible: contact.email==null ? false : true,
                //         child: Text(contact.email == null? 'Email  ' : 'Email : ${contact.email!}')),
                //     SizedBox(height: 8),
                //     Text(contact.number),
                //
                //
                //   ],
                // )
              );
            }
        )
        // GridView(
        //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //     // crossAxisCount: 3,
        //     maxCrossAxisExtent: 200,
        //     crossAxisSpacing: 6.0,
        //     mainAxisSpacing: 6.0,
        //
        //
        //   ),
        //
        //   children: [
        //    ItemContainerWidget(iconData: Icons.access_alarm, label: 'Schedual'),
        //     ItemContainerWidget(iconData: Icons.group, label: 'Group'),
        //     ItemContainerWidget(iconData: Icons.contacts, label: 'Contatcts'),
        //     ItemContainerWidget(iconData: Icons.add_circle_outline, label: 'Add Member'),
        //     ItemContainerWidget(iconData: Icons.access_alarm, label: 'Schedual'),
        //     ItemContainerWidget(iconData: Icons.group, label: 'Group'),
        //     ItemContainerWidget(iconData: Icons.contacts, label: 'Contatcts'),
        //     ItemContainerWidget(iconData: Icons.add_circle_outline, label: 'Add Member'),
        //
        //
        //
        //   ],
        // ),
      ),
    );
  }
}

/**
 * WET
 * We enjoy typing
 */
