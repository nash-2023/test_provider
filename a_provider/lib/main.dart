import 'package:a_provider/testProviderOfContext.dart';
import 'package:flutter/material.dart';

import 'package:a_provider/hmpg.dart';
import 'package:a_provider/testConsumer.dart';

import 'testSelector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider 01',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Provider 01'),
      // home: const TestConsumer(),
      // home: const TestSelector(),
      home: const TestProvOfCntx(),
    );
  }
}
