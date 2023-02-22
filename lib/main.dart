import 'package:blogapp/feedback.dart';
import 'package:blogapp/homepage.dart';
import 'package:blogapp/profile.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyBottomNavigationBar(),
    );
  }
}
class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex=0;
  final List _children=[
    const homepage(),
    const profile(),
    const feedback()
  ];
  void onTappedBar(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
              icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.account_circle),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.feedback),
              label: 'Feedback',
          ),
        ],
      ),
    );
  }
}

