import 'package:flutter/material.dart';


class tic extends StatelessWidget {
  const tic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Часы'),
        ),
    );
  }
}


class TicTacPage extends StatefulWidget {
  const TicTacPage({super.key});

  @override
  State<TicTacPage> createState() => _TicTacPageState();
}


class _TicTacPageState extends State<TicTacPage> {

  List<String> moves = List.filled(9, "-");
  
  String currentMove = "X";
  
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Крестики нолики'), 
        centerTitle: true, 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Текущий ход: $currentMove", 
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20), 
            SizedBox(
              height: 300,
              width: 300,
              child: GridView.builder(
                primary: true,
                padding: const EdgeInsets.all(6),
                itemCount: 9, 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3), 
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (moves[index] == "-") {
                        setState(() {
                          
                          moves[index] = currentMove;
                          
                          currentMove = currentMove == "O" ? "X" : "O";
                          
                          count++;
                        
                          if (_checkWinner()) {
                            _showDialog(context, "Победа", "Победитель ${moves[index]}");
                          } else if (count == 9) {
                            _showDialog(context, "Ничья!", "Матч закончился вничью");
                          }
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black), 
                        color: moves[index] == "-"
                            ? Colors.white 
                            : (moves[index] == "X"
                                ? Colors.blue.shade100 
                                : Colors.red.shade100), 
                      ),
                      child: Center(
                        child: Text(
                          moves[index], 
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: _resetGame, 
              child: const Text("Сыграть еще"),
            ),
            TextButton(onPressed: (){Navigator.of(context).pushNamed("/start");},
                
               child: Text("назад"))
          ],
        ),
      ),
    );
  }

  
  void _resetGame() {
    setState(() {
      moves = List.filled(9, "-"); 
      currentMove = "X"; 
      count = 0; 
    });
  }

  
  bool _checkWinner() {
    List<List<int>> winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];

    for (var combo in winningCombinations) {
      if (moves[combo[0]] != "-" &&
          moves[combo[0]] == moves[combo[1]] &&
          moves[combo[1]] == moves[combo[2]]) {
        return true;
      }
    }
    return false;
  }

  
  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title), 
          content: Text(content), 
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
                _resetGame(); 
              },
              child: const Text("Сыграть снова"),
            ),
          ],
        );
      },
    );
  }
}