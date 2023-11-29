import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.check_circle_outline),
            ),
            Text('Flutter: Primeiros Passos'),
          ],
        )),
        body: ListView(
          children: [
            ListBox(Colors.white, Colors.pinkAccent, Colors.lightBlueAccent, Icons.people),
            ListBox(Colors.pink, Colors.purple, Colors.blueAccent, Icons.person),
            ListBox(Colors.pinkAccent, Colors.amber, Colors.lightBlue, Icons.people),
            ListBox(Colors.purpleAccent, Colors.white, Colors.green, Icons.person),
          ],
        ),
      ),
    );
  }
}

class ListBox extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final IconData icone;

  const ListBox(
    this.cor1,
    this.cor2,
    this.cor3,
    this.icone, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 140,
        child: Row(
          children: [
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(20),
                color: cor1,
              ),
            ),
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(20),
                color: cor2,
              ),
              child: Icon(icone),
            ),
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(20),
                color: cor3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
