import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wokkinWidget/Widgets/all_products.dart';
import 'package:wokkinWidget/Widgets/each_product.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Ionicons.ios_menu),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1.5,
                            spreadRadius: .5)
                      ]),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(17))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our",
                  style: TextStyle(fontSize: 40),
                ),
                Text("Products",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(AntDesign.search1),
                        hintText: "Search Product",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Ionicons.ios_options),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1.5,
                            spreadRadius: .5)
                      ]),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: AllProducts(),
            ),
          )
        ],
      ),
    );
  }
}
