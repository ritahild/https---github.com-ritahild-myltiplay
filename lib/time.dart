import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';




class watch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Часы'),
        ),
        body: Center(

          child: Column(
            children: [
              AnalogClock(
                dialColor: null,
                markingColor: Colors.black,
                hourNumbers: const ['', '', '3', '', '', '6', '', '', '9', '', '', '12'],
                hourNumberColor: Colors.black,
                secondHandColor: null,
                dateTime:DateTime.now(),
              ),

              TextButton(onPressed: (){Navigator.of(context).pushNamed("/start");},
                
               child: Text("назад"))

           
            ],
          ),
        ),
      );
    
  }
}