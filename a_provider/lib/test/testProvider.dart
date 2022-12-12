import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class TestProvider extends StatefulWidget {
  const TestProvider({super.key});

  @override
  State<TestProvider> createState() => _TestProviderState();
}

class _TestProviderState extends State<TestProvider> {
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    return Provider<ModelChngNtf>(
      create: (context) => ModelChngNtf(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Provider Tester Provider",
            style: GoogleFonts.caveat(
              textStyle: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ModelChngNtf>(
                builder: (context, value, child) {
                  print('one');
                  return Text("${value.showx}");
                },
                child: null,
              ),
              SizedBox(height: 20.0),
              Consumer<ModelChngNtf>(
                builder: (context, value, child) {
                  return ElevatedButton(
                    onPressed: () {
                      value.changeName1();
                      print(value.showx);
                    },
                    child: Text("X+1"),
                  );
                },
              ),
              SizedBox(height: 20.0),
              Consumer<ModelChngNtf>(
                builder: (context, value, child) {
                  return ElevatedButton(
                    onPressed: () {
                      value.changeName2();
                      print(value.showx);
                    },
                    child: Text("X+1"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ModelChngNtf extends ChangeNotifier {
class ModelChngNtf {
  int _x = 0;
  int get showx => _x;
  changeName1() {
    _x++;
    // notifyListeners();
  }

  changeName2() {
    _x++;
    // notifyListeners();
  }
}
