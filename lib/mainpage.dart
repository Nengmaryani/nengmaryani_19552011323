import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:nengmaryani_19552011323/dashboardpage.dart';
import 'package:nengmaryani_19552011323/datepage.dart';
import 'package:nengmaryani_19552011323/timepage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({ Key? key }) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex - index;
            });
          },
          children: [
            Dashboardpage(),
            Datepage(),
            Timepage(),

          ],
   
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: - _selectedIndex,
        onItemSelected: (index){
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.dashboard), 
            title: Text('Dashboard'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.blueAccent,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.date_range), 
              title: Text('Date'),
              activeColor: Colors.redAccent,
              inactiveColor: Colors.redAccent,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.timer), 
                title: Text('Time'),
                activeColor: Colors.greenAccent,
                inactiveColor: Colors.greenAccent,
                ),
        ],
        ),
    );
  }
}