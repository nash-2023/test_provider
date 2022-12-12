import 'package:a_provider/beta/b_providerClass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:a_provider/beta/page2.dart';
import 'package:provider/provider.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    var prox = Provider.of<B_Provider>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Selector<B_Provider, int>(
          selector: (p0, p1) => p1.showCounter,
          builder: (context, value, child) {
            return Text("counter value is $value");
          },
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {
              prox.CntrPlusOne();
            },
            child: Text("add"),
          ),
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {
              var router =
                  MaterialPageRoute(builder: (context) => const B_home2());
              Navigator.push(context, router);
            },
            child: Text("Go to Page #2"),
          ),
        )
      ],
    );
  }
}
