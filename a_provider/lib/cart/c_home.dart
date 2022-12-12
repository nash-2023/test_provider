import 'package:a_provider/cart/cart.dart';
import 'package:a_provider/cart/item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class C_home extends StatefulWidget {
  const C_home({super.key});

  @override
  State<C_home> createState() => _C_homeState();
}

class _C_homeState extends State<C_home> {
  List<MyItem> items = [
    MyItem('Item 1', 20.0),
    MyItem('Item 2', 30.0),
    MyItem('Item 3', 40.0),
    MyItem('Item 5', 50.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeTitle(),
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text("${context.watch<Cart>().number}"),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("${items[index].name}"),
              subtitle: Text("${items[index].price} EGP"),
              trailing: IconButton(
                onPressed: () {
                  context.read<Cart>().addItem();
                },
                icon: Icon(Icons.add_shopping_cart_outlined),
              ),
            ),
          );
        },
      ),
      //*************** End Of Scaffold */
    );
  }
}

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'CART HOME',
      style: GoogleFonts.damion(
        textStyle: TextStyle(
          fontSize: 35.0,
        ),
      ),
    );
  }
}
