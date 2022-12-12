import 'package:a_provider/beta/b_home.dart';
import 'package:a_provider/beta/b_providerClass.dart';
import 'package:a_provider/test/testContextWatch_Read.dart';
import 'package:a_provider/test/testMultyProvider.dart';
import 'package:flutter/material.dart';
import 'package:a_provider/test/testConsumer.dart';
import 'package:a_provider/test/testProviderOfContext.dart';
import 'package:a_provider/test/testSelector.dart';
import 'package:provider/provider.dart';

import 'test/testProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider 01',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const B_home(),
      // home: const MyHomePage(title: 'Provider 01'),
      // home: const TestConsumer(),
      // home: const TestSelector(),
      // home: const TestProvOfCntx(),
      // home: const TestCntxtWtchRead(),
      // home: const TestProvider(),
      home: const TestMultyProvider(),

      //
    );
  }
}
