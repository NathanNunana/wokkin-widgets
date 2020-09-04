import 'package:flutter/material.dart';
import 'package:wokkinWidget/Screens/products.dart';
import 'package:wokkinWidget/Screens/profile.dart';
import 'package:wokkinWidget/Screens/profile_update.dart';
import 'package:wokkinWidget/Screens/staggered_sales2.dart';
import 'package:wokkinWidget/Screens/upcoming_sales.dart';
import 'package:wokkinWidget/Screens/staggered_sales.dart';
import 'package:wokkinWidget/Widgets/all_products.dart';
import 'package:wokkinWidget/Widgets/sales_card.dart';
import 'package:wokkinWidget/Widgets/specifications.dart';

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wokkin UI and Widgets"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Profile())),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "Profile Page",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Divider(),
//          InkWell(
//            onTap: () => Navigator.push(
//                context,
//                MaterialPageRoute(
//                    builder: (BuildContext context) => SalesCard())),
//            child: Container(
//              width: MediaQuery.of(context).size.width,
//              padding: EdgeInsets.symmetric(vertical: 20),
//              child: Center(
//                child: Text(
//                  "Item Widget",
//                  style: TextStyle(fontSize: 20),
//                ),
//              ),
//            ),
//          ),
//          Divider(),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProfileUpdate())),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Profile Updated",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProductPage())),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Products",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SalesPage())),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Upcoming Orders Page",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => StaggeredSale())),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Staggered Sales Page",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => StaggeredSalesUpdate())),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Staggered Sales Page Update",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
