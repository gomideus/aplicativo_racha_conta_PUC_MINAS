
import 'package:flutter/material.dart';
import 'package:racha_conta/constants.dart';
import 'package:racha_conta/pages/home/body.dart';
import 'package:racha_conta/pages/secondPage/secondroute.dart';
import 'package:racha_conta/pages/thirdPage/thirdpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {

      if(_selectedIndex != index) {
        _selectedIndex = index;

        if (_selectedIndex == 0) {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (c, a1, a2) => MyHomePage(),
              transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
              transitionDuration: Duration(milliseconds: 0),
            ),
          );
        }else if(_selectedIndex == 1){
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (c, a1, a2) => SecondRoute(),
              transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
              transitionDuration: Duration(milliseconds: 0),
            ),
          );
        }else if(_selectedIndex == 2){

          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (c, a1, a2) => ThirdRoute(),
              transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
              transitionDuration: Duration(milliseconds: 0),
            ),
          );
        }

      }

      });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
        'Aplicativo Racha Conta',
        style: TextStyle(
            color: Color(0xffba9593),
            fontWeight: FontWeight.bold,
            fontSize: 21,
        ),
      ),
      ),
      resizeToAvoidBottomInset: false,
      body: Body(),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_outlined),
            label: 'Conta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink_outlined),
            label: 'Alcoólicos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.beenhere_rounded),
            label: 'Finalização',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
