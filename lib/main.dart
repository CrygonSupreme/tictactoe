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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 100,
                      height:100,
                    child: const DecoratedBox(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(onPressed: null, child: Text("1"),),
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height:100,
                    child: const DecoratedBox(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(onPressed: null, child: Text("1"),),
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height:100,
                    child: const DecoratedBox(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(onPressed: null, child: Text("1"),),
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.blueAccent
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
                  child: const DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: null, child: Text("1"),),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height:100,
                  child: const DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: null, child: Text("1"),),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height:100,
                  child: const DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: null, child: Text("1"),),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent
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
                  child: const DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: null, child: Text("1"),),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height:100,
                  child: const DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: null, child: Text("1"),),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height:100,
                  child: const DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: null, child: Text("1"),),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent
                    ),
                  ),
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}
