import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/quiz2.dart';

void main() {
  runApp(MaterialApp(
    home: GameScreen(),
  ));
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 100,
              child: ElevatedButton(
                child: Text('Questões sobre LGPD'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4A0975), // cor do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Quiz()),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 100,
              child: ElevatedButton(
                child: Text('Questões de Segurança da Informação'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4A0975), // cor do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Quiz2()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
