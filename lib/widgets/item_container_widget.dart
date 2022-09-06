import 'package:flutter/material.dart';

class ItemContainerWidget extends StatelessWidget {
  final IconData iconData;
  final String label;
  const ItemContainerWidget({Key? key, required this.iconData, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconData,size: 100,color: Colors.white,),
            Text(label,style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900,


            ),)
          ],
        ),
      ),



    );
  }
}
