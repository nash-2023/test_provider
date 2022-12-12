import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestConsumer extends StatefulWidget {
  const TestConsumer({super.key});

  @override
  State<TestConsumer> createState() => _TestConsumerState();
}

class _TestConsumerState extends State<TestConsumer> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ModelChngNtf();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Provider Tester Consumer"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ModelChngNtf>(builder: (context, chNtf, child) {
                print('one');
                return Text("${chNtf.name1}");
              }),
              SizedBox(height: 20.0),
              Consumer<ModelChngNtf>(builder: (context, chNtf, child) {
                print("two");
                return Text("${chNtf.name2}");
              }),
              SizedBox(height: 20.0),
              Consumer<ModelChngNtf>(builder: (context, chNtf, child) {
                print("three");
                return ElevatedButton(
                  onPressed: () {
                    chNtf.changeName1();
                    chNtf.changeName2();
                  },
                  child: const Icon(Icons.add),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class ModelChngNtf extends ChangeNotifier {
  String name1 = "WELCOME";
  String name2 = "WELCOME";
  changeName1() {
    Timer(Duration(seconds: 3), () {
      name1 = "ABDALLA";
      notifyListeners();
    });
  }

  changeName2() {
    name2 = "Fat7y";
    notifyListeners();
  }
}
 /*
 Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$_text"),
            ],
          ),
        )
Consumer<ModelChngNtf>(
          builder: (context, chNtf, child) {
            return 
            },
);

 */