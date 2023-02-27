// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:olx_app/posts/posts.dart';
import 'Categories/categories.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white.withOpacity(0.99)),
      home: Scaffold(
        body: olxBody(),
        bottomNavigationBar: bnb(),
        floatingActionButton: fab(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}

class olxBody extends StatefulWidget {
  const olxBody({Key? key}) : super(key: key);

  @override
  State<olxBody> createState() => _olxBodyState();
}

class _olxBodyState extends State<olxBody> {
  var items = ['item 1', 'item 2', 'item 3'];
  String dropdownvalue = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // padding: const EdgeInsets.only(left: 10, right: 10),
        height: MediaQuery.of(context).size.height,
        width: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1st row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('images/OLX.png'),
                      height: 40,
                      width: 40,
                    ),
                  ),
                  // SizedBox(
                  //   width: 50,
                  // ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.car_rental_rounded),
                        Text('MOTORS'),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 50,
                  // ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.house_rounded),
                        Text('PROPERTY'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //2nd row
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.location_on, color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    // Array list of items

                    style: TextStyle(color: Colors.black),

                    hint: Text('Karachi, Sindh'),
                    icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),

                  // Icon(Icons.arrow_drop_down, color: Colors.black),
                ],
              ),
            ),

            // 3rd row

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Find Cars, Mobile Phones and more, Sindh',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //Categories container
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.7),
                    offset: Offset(0, 0),
                    blurRadius: 7)
              ]),
              child: Column(
                children: [
                  //browse category & see all (text)

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Browse Categories'),
                        RawMaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Sell all',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //categories options

                  categories(),
                ],
              ),
            ),

            //Posts container
            Container(
              color: Colors.amberAccent,
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: posts(),
            ),
          ],
        ),
      ),
    );
  }
}

//botton nav bar
class bnb extends StatefulWidget {
  const bnb({Key? key}) : super(key: key);

  @override
  State<bnb> createState() => _bnbState();
}

class _bnbState extends State<bnb> {
  int _currentIndex = 0;
  List Screens = [
    Navigator(
      initialRoute: '/home',
    ),
    Navigator(
      initialRoute: '/',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // backgroundColor: Colors.amber[600],
      selectedItemColor: Colors.black,

      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (value) => setState(
        () => _currentIndex = value,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'CHATS',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'MY ADS',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'ACCOUNT',
        ),
      ],
    );
  }
}

//floating action button
class fab extends StatefulWidget {
  const fab({Key? key}) : super(key: key);

  @override
  State<fab> createState() => _fabState();
}

class _fabState extends State<fab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'SELL',
      mini: true,
      elevation: 8,
      onPressed: () {},
      child: Icon(
        Icons.add,
        semanticLabel: 'Sell',
      ),
    );
  }
}
