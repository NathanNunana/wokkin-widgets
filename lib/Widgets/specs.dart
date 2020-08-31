import 'package:flutter/material.dart';

class Specs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Row(children: [
            Icon(
              Icons.memory,
              color: Colors.redAccent,
//                size: 40,
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
              color: Colors.redAccent,
//                size: 40,
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
              color: Colors.redAccent,
//                size: 40,
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
              color: Colors.redAccent,
//                size: 40,
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
    );
  }
}
