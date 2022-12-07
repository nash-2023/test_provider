import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _text = "WELCOME";

  void _doSomeThing() {
    setState(() {
      _text = "FUNKEY MUNKEY BUNKEY";
      _counter++;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME $_counter TIMES !"),
            Text("$_text"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _doSomeThing,
        tooltip: 'Do STh',
        child: const Icon(Icons.add),
      ),
    );
  }
}
