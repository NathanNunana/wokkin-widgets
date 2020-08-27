import 'package:flutter/material.dart';

class Specs extends StatelessWidget {
//  final List<String> specs = [
//    "Body Type",
//    "Fuel Type",
//    "Air Con",
//    "Drive Type"
//  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(color: Colors.black12),
              bottom: BorderSide(color: Colors.black12),
              top: BorderSide(color: Colors.black12),
              right: BorderSide(color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(children: [
              Icon(
                Icons.memory,
                size: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Engine"),
                  Text(
                    "4L",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
          ),
          Divider(),
          Container(
            child: Row(children: [
              Icon(
                Icons.av_timer,
                size: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("GearBox"),
                  Text(
                    "Automatic",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
          ),
          Divider(),
          Container(
            child: Row(children: [
              Icon(
                Icons.call_merge,
                size: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Milleage"),
                  Text(
                    "245KM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
          ),
          Divider(),
          Container(
            child: Row(children: [
              Icon(
                Icons.calendar_today,
                size: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Year"),
                  Text(
                    "2016",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
