// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class posts extends StatefulWidget {
  const posts({Key? key}) : super(key: key);

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
  List<String> postName = [
    'Mobile Phones',
    'Bikes',
    'Cars',
    'Property',
    'Laptops'
  ];
  List<String> postPicData = [
    'https://images.pexels.com/photos/1092644/pexels-photo-1092644.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/104842/bmw-vehicle-ride-bike-104842.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/116675/pexels-photo-116675.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/7974/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: postName.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
          height: 100,
          width: 100,
          child: Card(
            semanticContainer: false,
            elevation: 5,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image(
                  image: NetworkImage(postPicData[index]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(postName[index]),
                    Icon(Icons.favorite_outline),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
