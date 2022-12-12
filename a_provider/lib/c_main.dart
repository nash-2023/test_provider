import 'package:a_provider/cart/c_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cart',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: C_home(),
      ),
    );
  }
}


/*
MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cart',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const C_home(),
    )
*/