import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  final List<Icon> icons = [
    Icon(Icons.shopping_cart),
    Icon(
      Icons.notifications,
      color: Colors.green,
    ),
    Icon(
      Icons.notifications,
      color: Colors.green,
    ),
  ];
  final List<String> Categories = [
    "Bought items",
    "Notifications",
    "Notifications"
  ];
  final List<String> products = ["HP Pavillion", "AlienWare", "Rice Cooker"];
  Widget _listProductItems(BuildContext context, int index) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 10),
            child: Row(children: [
              icons[index],
              Text(
                Categories[index],
                style: TextStyle(fontSize: 22),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
            margin: EdgeInsets.only(left: 10.0),
            child: Row(children: [
              CircleAvatar(
                child: Image.network(""),
                radius: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.00),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      products[index],
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Purchased",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text("Mon, 18 Oct 16:00", style: TextStyle(fontSize: 16)),
                  ],
                ),
              )
            ]),
          ),
          Divider()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _listProductItems,
      itemCount: products.length,
    );
  }
}
