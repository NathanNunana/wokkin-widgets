import 'package:flutter/material.dart';
import 'package:wokkinWidget/Screens/profile.dart';
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
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SalesCard())),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Item Widget",
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
