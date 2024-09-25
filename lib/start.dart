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

// //аналоговые часы

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Alarm Clock',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // creating text editing controller to take hour and minute as input
//   TextEditingController hourController = TextEditingController();
//   TextEditingController minuteController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('GeeksForGeeks'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 40,
//                   width: 60,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     color: Colors.yellow,
//                     borderRadius: BorderRadius.circular(11),
//                   ),
//                   child: Center(
//                     child: TextField(
//                       controller: hourController,
//                       keyboardType: TextInputType.number,
//                       decoration: const InputDecoration(
//                         hintText: 'Hour',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 20),
//                 Container(
//                   height: 40,
//                   width: 60,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     color: Colors.yellow,
//                     borderRadius: BorderRadius.circular(11),
//                   ),
//                   child: Center(
//                     child: TextField(
//                       controller: minuteController,
//                       keyboardType: TextInputType.number,
//                       decoration: const InputDecoration(
//                         hintText: 'Minute',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               margin: const EdgeInsets.all(25),
//               child: TextButton(
//                 child: const Text(
//                   'Create alarm',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 onPressed: () {
//                   int? hour = int.tryParse(hourController.text);
//                   int? minutes = int.tryParse(minuteController.text);

//                   // Ensure the values are not null before proceeding
//                   if (hour != null && minutes != null) {
//                     // creating alarm after converting hour and minute into integer
//                     FlutterAlarmClock.createAlarm(hour: hour, minutes: minutes);
//                   } else {
//                     showErrorDialog(context, 'Please enter valid hour and minute.');
//                   }
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // show alarms
//                 FlutterAlarmClock.showAlarms();
//               },
//               child: const Text(
//                 'Show Alarms',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.all(25),
//               child: TextButton(
//                 child: const Text(
//                   'Create timer',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 onPressed: () {
//                   int? minutes = int.tryParse(minuteController.text);

//                   if (minutes != null) {
//                     // create timer
//                     FlutterAlarmClock.createTimer(length: minutes);
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return const AlertDialog(
//                           content: Center(
//                             child: Text(
//                               "Timer is set",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   } else {
//                     showErrorDialog(context, 'Please enter a valid number of minutes.');
//                   }
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // show timers
//                 FlutterAlarmClock.showTimers();
//               },
//               child: const Text(
//                 "Show Timers",
//                 style: TextStyle(fontSize: 17),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   // Method to show an error dialog if inputs are invalid
//   void showErrorDialog(BuildContext context, String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           content: Text(message),
//         );
//       },
//     );
//   }
// }
// // будильник



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Alarm Clock',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // creating text editing controller to take hour and minute as input
//   TextEditingController hourController = TextEditingController();
//   TextEditingController minuteController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('GeeksForGeeks'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 40,
//                   width: 60,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     color: Colors.yellow,
//                     borderRadius: BorderRadius.circular(11),
//                   ),
//                   child: Center(
//                     child: TextField(
//                       controller: hourController,
//                       keyboardType: TextInputType.number,
//                       decoration: const InputDecoration(
//                         hintText: 'Hour',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 20),
//                 Container(
//                   height: 40,
//                   width: 60,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     color: Colors.yellow,
//                     borderRadius: BorderRadius.circular(11),
//                   ),
//                   child: Center(
//                     child: TextField(
//                       controller: minuteController,
//                       keyboardType: TextInputType.number,
//                       decoration: const InputDecoration(
//                         hintText: 'Minute',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               margin: const EdgeInsets.all(25),
//               child: TextButton(
//                 child: const Text(
//                   'Create alarm',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 onPressed: () {
//                   int? hour = int.tryParse(hourController.text);
//                   int? minutes = int.tryParse(minuteController.text);

//                   // Ensure the values are not null before proceeding
//                   if (hour != null && minutes != null) {
//                     // creating alarm after converting hour and minute into integer
//                     FlutterAlarmClock.createAlarm(hour: hour, minutes: minutes);
//                   } else {
//                     showErrorDialog(context, 'Please enter valid hour and minute.');
//                   }
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // show alarms
//                 FlutterAlarmClock.showAlarms();
//               },
//               child: const Text(
//                 'Show Alarms',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.all(25),
//               child: TextButton(
//                 child: const Text(
//                   'Create timer',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 onPressed: () {
//                   int? minutes = int.tryParse(minuteController.text);

//                   if (minutes != null) {
//                     // create timer
//                     FlutterAlarmClock.createTimer(length: minutes);
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return const AlertDialog(
//                           content: Center(
//                             child: Text(
//                               "Timer is set",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   } else {
//                     showErrorDialog(context, 'Please enter a valid number of minutes.');
//                   }
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // show timers
//                 FlutterAlarmClock.showTimers();
//               },
//               child: const Text(
//                 "Show Timers",
//                 style: TextStyle(fontSize: 17),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   // Method to show an error dialog if inputs are invalid
//   void showErrorDialog(BuildContext context, String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           content: Text(message),
//         );
//       },
//     );
//   }
// }


// // крестики нолики





// import 'package:flutter/material.dart'; 
// import 'package:flutter/services.dart'; 

// void main() { 
// runApp(const MyApp()); 
// } 

// class MyApp extends StatelessWidget { 
// const MyApp({Key? key}); 

// @override 
// Widget build(BuildContext context) { 
// 	return MaterialApp( 
// 	debugShowCheckedModeBanner: false, 
// 	title: 'Age Calculator', 
// 	theme: ThemeData(primarySwatch: Colors.deepOrange), 
// 	home: const HomeScreen(), 
// 	); 
// } 
// } 

// class HomeScreen extends StatefulWidget { 
// const HomeScreen({Key? key}); 

// @override 
// State<HomeScreen> createState() => _HomeScreenState(); 
// } 

// class _HomeScreenState extends State<HomeScreen> { 
// String myAge = ''; 

// @override 
// Widget build(BuildContext context) { 
// 	return Scaffold( 
// 	appBar: AppBar( 
// 		title: const Text("Age Calculator"), 
// 		centerTitle: true, 
// 		systemOverlayStyle: SystemUiOverlayStyle( 
// 			statusBarColor: Theme.of(context).primaryColor), 
// 	), 
// 	body: Center( 
// 		child: Column( 
// 		mainAxisAlignment: MainAxisAlignment.center, 
// 		children: [ 
// 			const Text( 
// 			'Your age is', 
// 			// style: Theme.of(context).textTheme.displayLarge, 
// 			style: TextStyle(fontSize: 40), 
// 			), 
// 			const SizedBox( 
// 			height: 10, 
// 			), 
// 			Text(myAge), 
// 			const SizedBox( 
// 			height: 30, 
// 			), 
// 			ElevatedButton( 
// 			onPressed: () => pickDob(context), 
// 			child: const Text('Pick Your Date of Birth'), 
// 			) 
// 		], 
// 		), 
// 	), 
// 	); 
// } 

// pickDob(BuildContext context) { 
// 	showDatePicker( 
// 	context: context, 
// 	initialDate: DateTime.now(), 
// 	firstDate: DateTime(1900), 
// 	lastDate: DateTime.now(), 
// 	).then((pickedDate) { 
// 	if (pickedDate != null) { 
// 		calculateAge(pickedDate); 
// 	} 
// 	}); 
// } 

// calculateAge(DateTime birth) { 
// 	DateTime now = DateTime.now(); 
// 	Duration age = now.difference(birth); 
// 	int years = age.inDays ~/ 365; 
// 	int months = (age.inDays % 365) ~/ 30; 
// 	int days = ((age.inDays % 365) % 30); 
// 	setState(() { 
// 	myAge = '$years years, $months months, and $days days'; 
// 	}); 
// } 
// } 
// //калькулятор возраста
