import 'package:flutter/material.dart';

class Dashboardpage extends StatefulWidget {
  const Dashboardpage({ Key? key }) : super(key: key);

  @override
  _DashboardpageState createState() => _DashboardpageState();
}

class _DashboardpageState extends State<Dashboardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dashboard Page',
        style: TextStyle(color: Colors.white),
        ),
        ),
        backgroundColor:  Colors.blueAccent,
      
    );
  }
}