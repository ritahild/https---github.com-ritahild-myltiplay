

import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart';
import 'package:flutter_siva/calcylator.dart';

import 'package:flutter_siva/start.dart';

import 'package:flutter_siva/tictoc.dart';
import 'package:flutter_siva/time.dart'; 


void main() { 
runApp(const MyApp()); 
} 

class MyApp extends StatelessWidget { 
const MyApp({Key? key}); 

@override
Widget build(BuildContext context) {
  return MaterialApp(
    routes: {
      '/': (context) => Rec(),
      
      '/tictoc': (context) => tic(),
      '/calcylator': (context) => Calc(),
      '/time':(contex)=> watch(),
      
    },
    
  );
}

}