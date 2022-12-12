import 'package:a_provider/beta/b_home.dart';
import 'package:a_provider/beta/b_providerClass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // related to beta folder
  runApp(ChangeNotifierProvider(
    create: (context) => B_Provider(),
    child: MyApp(),
  ));
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
      home: const B_home(),
    );
  }
}
