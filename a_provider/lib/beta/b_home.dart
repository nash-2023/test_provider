import 'package:a_provider/beta/b_providerClass.dart';
import 'package:a_provider/beta/page1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:a_provider/beta/page2.dart';
import 'package:provider/provider.dart';

class B_home extends StatelessWidget {
  const B_home({super.key});

  @override
  Widget build(BuildContext context) {
    // var prov = Provider.of<B_Provider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beta Provider Home',
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
          Text("counter value is ${context.watch<B_Provider>().showCounter}"),
          ElevatedButton(
            onPressed: () {
              // prov.CntrPlusOne();
              context.read<B_Provider>().CntrPlusOne();
            },
            // child: Text("${prov.showCounter}"),
            // child: Text("${context.read<B_Provider>().showCounter}"),
            child: Text("${context.watch<B_Provider>().showCounter}"),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                var router =
                    MaterialPageRoute(builder: (context) => const page1());
                Navigator.push(context, router);
              },
              child: Text("Go to Page #1"),
            ),
          )
        ],
      ),
      //*************** End Of Scaffold */
    );
  }
}
