// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:olx_app/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  bool? _value = false;
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    animation =
        ColorTween(begin: Colors.red, end: Colors.green).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 40, top: 20, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/OLX.png'),
                height: 87,
                width: 130,
              ),
              Row(children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: animation.value),
                ),
                Text(
                  ' to the OLX Mobile App',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(right: 220, top: 5),
                child: Text(
                  'Log in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //enter username container
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Color.fromARGB(255, 66, 64, 64),
                          offset: Offset(.5, .5))
                    ]),
                //enter username
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  decoration: InputDecoration(
                    labelText: 'Enter Username',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //enter password container
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Color.fromARGB(255, 66, 64, 64),
                        offset: Offset(.5, .5),
                      ),
                    ]),
                //enter password
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //checkbox + text
              Row(
                children: [
                  Checkbox(
                    value: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    activeColor: Colors.black,
                  ),
                  Text(
                    'By clicking this you will be accepting our ',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              //t&c's
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Terms&Conditions ',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //create account
                  TextButton(onPressed: () {}, child: Text('Create account')),
                  SizedBox(
                    width: 85,
                  ),
                  //login button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                            left: 30, top: 15, right: 30, bottom: 15),
                        backgroundColor: Colors.blue,
                        textStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    child: Text(
                      'Log In',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
