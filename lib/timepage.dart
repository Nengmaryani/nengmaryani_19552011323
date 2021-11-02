import 'package:flutter/material.dart';

class Timepage extends StatefulWidget {
  const Timepage({ Key? key }) : super(key: key);

  @override
  _TimepageState createState() => _TimepageState();
}

class _TimepageState extends State<Timepage> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                _getTime(context);
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text('Time Picker',
              style: TextStyle(color: Colors.greenAccent),
              ),
              ),
              Text('Time Value : '+ _selectedTime.format(context),
              style: TextStyle(color: Colors.white),
              ),
          ],
         ),
        ),
        backgroundColor: Colors.greenAccent,
      );
  }
  _getTime(context) async {
    final _timePick = await showTimePicker(
      context: context, 
      initialTime: _selectedTime,
      builder: (context, child){
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true, ), 
          child: child!,
          );

      });

      if(_timePick != null) {
        setState(() {
          _selectedTime = _timePick;
        });
      }
  }
}