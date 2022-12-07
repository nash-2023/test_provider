import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class TestProvOfCntx extends StatefulWidget {
  const TestProvOfCntx({super.key});

  @override
  State<TestProvOfCntx> createState() => _TestProvOfCntxState();
}

class _TestProvOfCntxState extends State<TestProvOfCntx> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ModelChngNtf();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Provider Tester Selector",
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
                  return chNtf.x;
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
                  return chNtf.y;
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
    var chNtf = Provider.of<ModelChngNtf>(context, listen: false);
    print("button 1");
    return ElevatedButton(
      onPressed: () {
        chNtf.changeName1();
        // context.watch<ModelChngNtf>().changeName1();
      },
      child: Text("${context.read<ModelChngNtf>().x}"),
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
        chNtf.changeName2();
        // context.watch<ModelChngNtf>().changeName2();
      },
      child: Text("${context.watch<ModelChngNtf>().y}"),
    );
  }
}

class ModelChngNtf extends ChangeNotifier {
  int x = 0, y = 0;
  // String name1 = "WELCOME";
  // String name2 = "WELCOME";
  // get showname1 => name1;
  // get showname2 => name2;
  get showx => x;
  get showy => y;
  changeName1() {
    Timer(Duration(seconds: 0), () {
      // name1 = "ABDALLA";
      x++;
      notifyListeners();
    });
  }

  changeName2() {
    // name2 = "Fat7y";
    y++;
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
Selector<ModelChngNtf>(
          builder: (context, chNtf, child) {
            return 
            },
);

 */