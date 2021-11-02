import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datepage extends StatefulWidget {
  const Datepage({ Key? key }) : super(key: key);

  @override
  _DatepageState createState() => _DatepageState();
}

class _DatepageState extends State<Datepage> {
  DateTime _selectedDate = DateTime.now();
  DateFormat _dateFormat = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ElevatedButton(
            onPressed: (){
              _getDate(context);
            },
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
            child: Text('Date Picker',
            style: TextStyle(color: Colors.redAccent),
            ),
            ),
            SizedBox( height: 15,
            ),
            Text('Date Value: '+_dateFormat.format(_selectedDate),
            style: TextStyle(color: Colors.white),
            ),
            ],
          ),
      ),
      backgroundColor: Colors.redAccent,
    );
  }
  _getDate(context) async{
    final _datePick = await 
    showDatePicker(
      context: context, 
      initialDate: _selectedDate, 
      firstDate: _selectedDate.subtract(
        Duration(days: 30),
      ), 
      lastDate: DateTime(_selectedDate.year + 1),
      );

      if(_datePick != null) {
        setState(() {
          _selectedDate = _datePick;
        });
      }
  }
}
