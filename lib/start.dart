import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';




class Rec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Варианты'),
        ),
        body: Center(

          child: Column(
            children: [
             

              // TextButton(onPressed: (){Navigator.of(context).pushNamed("/tex");},
                
              //  child: Text("Будильник")),

               TextButton(onPressed: (){Navigator.of(context).pushNamed("/time");},
                
               child: Text("Часы")),
               
               TextButton(onPressed: (){Navigator.of(context).pushNamed("/calcylator");},
                
               child: Text("Калькулятор возраста")),

               
               
               TextButton(onPressed: (){Navigator.of(context).pushNamed("/tictoc");},
                
               child: Text("Крестики нолики")),

               
               
               

           
            ],
          ),
        ),
      );
    
  }
}

