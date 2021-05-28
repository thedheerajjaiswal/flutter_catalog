import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int myAge = 26;
  final String myName = 'Dheeraj Jaiswal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning App'),
      ),
      body: Center(
        child: Container(
          child: Text('My name is $myName  & i am $myAge year old !'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
