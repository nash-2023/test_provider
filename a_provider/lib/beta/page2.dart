import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:a_provider/beta/page3.dart';
import 'package:provider/provider.dart';

import 'b_providerClass.dart';

class B_home2 extends StatelessWidget {
  const B_home2({super.key});

  @override
  Widget build(BuildContext context) {
    var prox = Provider.of<B_Provider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beta Provider Home page 2',
          style: GoogleFonts.damion(
            textStyle: TextStyle(
              fontSize: 35.0,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
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
                    MaterialPageRoute(builder: ((context) => B_home3()));
                Navigator.push(context, router);
              },
              child: Text("Go to Page #3"),
            ),
          )
        ],
      ),
      //*************** End Of Scaffold */
    );
  }
}
