import 'package:flutter/material.dart';

Widget createRow(){
  return Container(
    width: 500,
    height: 500,
    alignment: Alignment.center,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(child: Text("1"), color: Colors.amber, width: 50, height: 50,),
        Container(child: Text("1"), color: Colors.black, width: 50, height: 50,),
        Container(child: Text("1"), color: Colors.lightGreenAccent, width: 50, height: 50,),
    
      ],
    ),
  );
}

Widget createRowIcons() {
  return Container(
    width: 250,
    height: 75,
    alignment: Alignment.center,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Colors.white),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(Icons.home, color: Colors.blue),
            Text(
              'Home',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        Column(
          children: [
            Icon(Icons.near_me, color: Colors.blue),
            Text(
              'Route',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        Column(
          children: [
            Icon(Icons.share, color: Colors.blue),
            Text(
              'Share',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget rowsTitleSection(){
  return Container(
    width: 300,
    height: 50,
    margin: EdgeInsets.all(20.0),
     decoration: BoxDecoration(
      border: Border.all(width: 1, color: Colors.white),
    ),
    child: const Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Árboles de Sakura', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Hermosos árboles en Japón',style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber,),
            SizedBox(width: 2),
            Text('42')
          ],
        )
      ],
    ),
  );
  // return const Row(
  //   children: [
  //     Expanded(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Expanded(
  //             child: Text('Árboles de Sakura', style: TextStyle(fontWeight: FontWeight.bold)),
  //           ),
  //           Text(
  //               'Texto normal',
  //             ),
  //         ],
  //       ),
  //     ),
  //     Row(
  //       children: [
  //          Icon(Icons.star),
  //           SizedBox(width: 4),
  //           Text('42')
  //       ],
  //     )
  //   ],
  // );
}