import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class TestCntxtWtchRead extends StatefulWidget {
  const TestCntxtWtchRead({super.key});

  @override
  State<TestCntxtWtchRead> createState() => _TestCntxtWtchReadState();
}

class _TestCntxtWtchReadState extends State<TestCntxtWtchRead> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ModelChngNtf(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Context.Watch/ .Read",
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
              Selector<ModelChngNtf, int>(
                selector: (cntxt, chNtf) {
                  // return chNtf.showname1;
                  return chNtf.showx;
                },
                builder: (context, value, child) {
                  print('one');
                  return Text("${value}");
                },
                child: null,
              ),
              SizedBox(height: 20.0),
              Selector<ModelChngNtf, int>(
                selector: (cntxt, chNtf) {
                  return chNtf.showy;
                },
                builder: (context, value, child) {
                  print('Two');
                  return Text("${value}");
                },
                child: null,
              ),
              SizedBox(height: 20.0),
              ButtomOne(),
              SizedBox(height: 20.0),
              ButtomTwo(),
              SizedBox(height: 20.0),
              ElevatedButton(
                /*
              the following code will never work 
              Bcs this 'context' is the 'BuildContext' of the class _TestCntxtWtchReadState
              which is above the ChangeNotifierProvider.
              */
                onPressed: () => context.read<ModelChngNtf>().changeName1(),
                //***************************** */
                child: Text("wrong"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtomOne extends StatelessWidget {
  const ButtomOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var chNtf = Provider.of<ModelChngNtf>(context, listen: false);
    print("button 1");
    return ElevatedButton(
      onPressed: () {
        // chNtf.changeName1();
        context.read<ModelChngNtf>().changeName1();
      },
      child: Text("${context.watch<ModelChngNtf>().showx}"),
    );
  }
}

class ButtomTwo extends StatelessWidget {
  const ButtomTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var chNtf = Provider.of<ModelChngNtf>(context, listen: false);
    print("button 2");
    return ElevatedButton(
      onPressed: () {
        // chNtf.changeName2();
        context.read<ModelChngNtf>().changeName2();
      },
      child: Text("${context.watch<ModelChngNtf>().showy}"),
    );
  }
}

class ModelChngNtf extends ChangeNotifier {
  int _x = 0, _y = 0;
  // String name1 = "WELCOME";
  // String name2 = "WELCOME";
  // get showname1 => name1;
  // get showname2 => name2;
  int get showx => _x;
  int get showy => _y;
  changeName1() {
    Timer(Duration(seconds: 0), () {
      // name1 = "ABDALLA";
      _x++;
      notifyListeners();
    });
  }

  changeName2() {
    // name2 = "Fat7y";
    _y++;
    notifyListeners();
  }
}
