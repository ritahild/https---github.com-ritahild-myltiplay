
import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart'; 



class Calc extends StatelessWidget { 
const Calc({Key? key}); 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
    appBar: AppBar(
       title: Text('Калькулятор возраста'),
       

	
    ),
   
	
	 
	); 
} 
} 

class CalcScreen extends StatefulWidget { 
const CalcScreen({Key? key}); 

@override 
State<CalcScreen> createState() => _CalcScreenState(); 
} 

class _CalcScreenState extends State<CalcScreen> { 
String myAge = ''; 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar( 
		title: const Text("Калькулятор возраста"), 
		centerTitle: true, 
		systemOverlayStyle: SystemUiOverlayStyle( 
			statusBarColor: Theme.of(context).primaryColor), 
	), 
	body: Center( 
		child: Column( 
		mainAxisAlignment: MainAxisAlignment.center, 
		children: [ 
			const Text( 
			'Возраст равен', 
			style: TextStyle(fontSize: 40), 
			), 
			const SizedBox( 
			height: 10, 
			), 
			Text(myAge), 
			const SizedBox( 
			height: 30, 
			), 
			ElevatedButton( 
			onPressed: () => pickDob(context), 
			child: const Text('Выберите дату рождения'), 
			),
      TextButton(onPressed: (){Navigator.of(context).pushNamed("/start");},
                
               child: Text("назад"))

    
		], 
    
		), 
	), 
	); 
} 

pickDob(BuildContext context) { 
	showDatePicker( 
	context: context, 
	initialDate: DateTime.now(), 
	firstDate: DateTime(1900), 
	lastDate: DateTime.now(), 
	).then((pickedDate) { 
	if (pickedDate != null) { 
		calculateAge(pickedDate); 
	} 
	}); 
} 

calculateAge(DateTime birth) { 
	DateTime now = DateTime.now(); 
	Duration age = now.difference(birth); 
	int years = age.inDays ~/ 365; 
	int months = (age.inDays % 365) ~/ 30; 
	int days = ((age.inDays % 365) % 30); 
	setState(() { 
	myAge = '$years years, $months months, and $days days'; 
	}); 
} 
} 

