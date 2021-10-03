import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'TicTacToe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List<Color> colors =[];
  var colors = [Colors.blue, Colors.blue,Colors.blue, Colors.blue,Colors.blue, Colors.blue,Colors.blue, Colors.blue,Colors.blue];
  var counter = 0;
  var winningCondition = [0,0,0,0,0,0,0,0,0];
  var result = "Game On!";
  var xo = [" "," "," "," "," "," "," "," "," "];
  var xLeaderboard = 0;
  var oLeaderboard = 0;
  var gameSet = 3;
  winn() {
    if(xLeaderboard == gameSet) {
      gameSet = gameSet + Random().nextInt(14);
      print(gameSet);
      result = "Player X just owned Player O";
      xLeaderboard = 0;
      oLeaderboard = 0;
    }
    if(oLeaderboard == gameSet) {
      gameSet = gameSet + Random().nextInt(14);
      print(gameSet);
      result = "Player O just owned Player X";
      xLeaderboard = 0;
      oLeaderboard = 0;
    }
  }
  init() {
    setState(() {
      colors = [Colors.blue, Colors.blue,Colors.blue, Colors.blue,Colors.blue, Colors.blue,Colors.blue, Colors.blue,Colors.blue];
      counter = 0;
      winningCondition = [0,0,0,0,0,0,0,0,0];
      result = "Game On!";
      xo = [" "," "," "," "," "," "," "," "," "];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(onPressed: ()=> {
              init()
            }, child: Text("RESET")),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height:100,
                    child: DecoratedBox(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(onPressed:()=> onClicked(0),
                            style: ElevatedButton.styleFrom(
                              primary: colors[0],
                            ),
                            child: Text(xo[0],style: TextStyle(fontSize: 32))),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height:100,
                    child: DecoratedBox(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(onPressed:()=> onClicked(1),
                            style: ElevatedButton.styleFrom(
                              primary: colors[1],
                            ),
                            child: Text(xo[1],style: TextStyle(fontSize: 32))),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height:100,
                    child: DecoratedBox(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(onPressed:()=> onClicked(2),
                            style: ElevatedButton.styleFrom(
                              primary: colors[2],
                            ),
                            child: Text(xo[2],style: TextStyle(fontSize: 32))),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],

              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height:100,
                  child: DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed:()=> onClicked(3),
                          style: ElevatedButton.styleFrom(
                            primary: colors[3],
                          ),
                          child: Text(xo[3],style: TextStyle(fontSize: 32))),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height:100,
                  child: DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed:()=> onClicked(4),
                          style: ElevatedButton.styleFrom(
                            primary: colors[4],
                          ),
                          child: Text(xo[4],style: TextStyle(fontSize: 32))),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height:100,
                  child: DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed:()=> onClicked(5),
                          style: ElevatedButton.styleFrom(
                            primary: colors[5],
                          ),
                          child: Text(xo[5],style: TextStyle(fontSize: 32))),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],

            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height:100,
                  child: DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed:()=> onClicked(6),
                          style: ElevatedButton.styleFrom(
                            primary: colors[6],
                          ),
                          child: Text(xo[6],style: TextStyle(fontSize: 32))),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height:100,
                  child: DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed:()=> onClicked(7),
                          style: ElevatedButton.styleFrom(
                            primary: colors[7],
                          ),
                          child: Text(xo[7],style: TextStyle(fontSize: 32))),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height:100,
                  child: DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed:()=> onClicked(8),
                          style: ElevatedButton.styleFrom(
                            primary: colors[8],
                          ),
                          child: Text(xo[8],style: TextStyle(fontSize: 32))),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],

            ),
            Text("First to " + gameSet.toString() + " wins!", style: TextStyle(fontSize: 30)),
            Text(result, style: TextStyle(fontSize: 30)),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                   children: [
                     Text("X", style: TextStyle(fontSize: 50)),
                     Text(xLeaderboard.toString(), style: TextStyle(fontSize: 50)),
                   ],
                  ),
                  Column(
                    children: [
                      Text("O", style: TextStyle(fontSize: 50)),
                      Text(oLeaderboard.toString(), style: TextStyle(fontSize: 50)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  onClicked(int index) {
    setState(() {
      if(winningCondition[index] == 0) {
        counter = counter + 1;
        if (counter % 2 == 1) {
          colors[index] = Colors.red;
          winningCondition[index] = 1;
          xo[index] = "X";
        }
        else {
          colors[index] = Colors.green;
          winningCondition[index] = 2;
          xo[index] = "O";
        }
        if(winningCondition[0] == winningCondition[1] && winningCondition[1] == winningCondition[2] && winningCondition[0] != 0) {
          if (winningCondition[0] == 1) {
            result = "Player X won!";
            xLeaderboard = xLeaderboard + 1;
          }
          else {
            result = "Player O won!";
            oLeaderboard = oLeaderboard + 1;
          }
          winn();
        }
        if(winningCondition[3] == winningCondition[4] && winningCondition[4] == winningCondition[5] && winningCondition[3] != 0) {
          if (winningCondition[3] == 1) {
            result = "Player X won!";
            xLeaderboard = xLeaderboard + 1;
          }
          else {
            result = "Player O won!";
            oLeaderboard = oLeaderboard + 1;
          }
          winn();
        }
        if(winningCondition[6] == winningCondition[7] && winningCondition[7] == winningCondition[8] && winningCondition[6] != 0) {
          if (winningCondition[6] == 1) {
            result = "Player X won!";
            xLeaderboard = xLeaderboard + 1;
          }
          else {
            result = "Player O won!";
            oLeaderboard = oLeaderboard + 1;
          }
          winn();
        }
        if(winningCondition[0] == winningCondition[3] && winningCondition[3] == winningCondition[6] && winningCondition[0] != 0) {
          if (winningCondition[0] == 1) {
            result = "Player X won!";
            xLeaderboard = xLeaderboard + 1;
          }
          else {
            result = "Player O won!";
            oLeaderboard = oLeaderboard + 1;
          }
          winn();
        }
        if(winningCondition[1] == winningCondition[4] && winningCondition[4] == winningCondition[7] && winningCondition[1] != 0) {
          if (winningCondition[1] == 1) {
            result = "Player X won!";
            xLeaderboard = xLeaderboard + 1;
          }
          else {
            result = "Player O won!";
            oLeaderboard = oLeaderboard + 1;
          }
          winn();
        }
        if(winningCondition[2] == winningCondition[5] && winningCondition[5] == winningCondition[8] && winningCondition[2] != 0) {
          if (winningCondition[2] == 1) {
            result = "Player X won!";
            xLeaderboard = xLeaderboard + 1;
          }
          else {
            result = "Player O won!";
            oLeaderboard = oLeaderboard + 1;
          }
          winn();
        }
        if(winningCondition[0] == winningCondition[4] && winningCondition[4] == winningCondition[8] && winningCondition[0] != 0) {
          if (winningCondition[0] == 1) {
            result = "Player X won!";
            xLeaderboard = xLeaderboard + 1;
          }
          else {
            result = "Player O won!";
            oLeaderboard = oLeaderboard + 1;
          }
          winn();
        }
        if(winningCondition[2] == winningCondition[4] && winningCondition[4] == winningCondition[6] && winningCondition[2] != 0) {
          if (winningCondition[2] == 1) {
            result = "Player X won!";
            xLeaderboard = xLeaderboard + 1;

          }
          else {
            result = "Player O won!";
            oLeaderboard = oLeaderboard + 1;

          }
          winn();
        }
      }
    });

  }





}
