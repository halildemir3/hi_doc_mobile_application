import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hi_doc/views/profile_page.dart';
import 'package:hi_doc/views/schedule.dart';


import '../constant/paths.dart';
import 'home_page.dart';
import 'message_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {}


  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MessagePage(),
    SchedulePage(),
    ProfilePage(),

  ];
  List titles = ["Maçlar", "Spor Haberleri", "Hakkımızda", "Profil"];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backGround_Color,

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,// backgroundColor: backGround_Color,
        showSelectedLabels: false,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed, showUnselectedLabels: false,

        //fixedColor: Colors.black87,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex==0?SvgPicture.asset(
        homeActive,

        height:  23,
        width:  23,
      ):SvgPicture.asset(
              home,

              height:  23,
              width:  23,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==1 ?SvgPicture.asset(
        messageActive,

        height:  23,
        width:  23,
      ):SvgPicture.asset(
              message,

              height:  23,
              width:  23,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==2?SvgPicture.asset(
        calenderActive,

        height:  23,
        width:  23,
      ):SvgPicture.asset(
              calender,

              height:  23,
              width:  23,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==3?SvgPicture.asset(
        profileActive,

        height:  23,
        width:  23,
      ):SvgPicture.asset(
              profile,

              height:  23,
              width:  23,
            ),
            label: '',
          ),


        ],
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
      ),
    );
  }
}