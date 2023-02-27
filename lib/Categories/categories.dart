// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  //categories Data
  List<String> categoriesName = ['Bikes', 'Cars', 'Property', 'Phone'];
  List<IconData> categoriesData = [
    Icons.motorcycle,
    Icons.car_rental,
    Icons.house,
    Icons.phone_android
  ];
 
  buttons() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size(80, 30),
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                primary: Colors.white,
             
              ),
              onPressed: () {},
              child: Card(
                elevation: 0,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(categoriesData[index], size: 50, color: Colors.black),
                    Text(categoriesName[index],
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: categoriesData.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buttons();
  }
}
