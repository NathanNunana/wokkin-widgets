import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wokkinWidget/images.dart';

class SalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var iconHeight = media.height * .26;
    var iconWidth = media.width * .38;
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => Container(
          height: MediaQuery.of(context).size.height * .35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          margin: EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width * .55,
                      height: MediaQuery.of(context).size.height * .35,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12)),
                        child: Image.network(
                          items[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(10, 10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Text(
                        "UPCOMMING",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Transform.translate(
                      offset: Offset(iconWidth, iconHeight),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          child: Icon(
                            Ionicons.ios_notifications_outline,
//                            color: Colors.redAccent,
                          ),
                          radius: 24,
                        ),
                      ))
                ],
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "A Careful Hand made lether jacket",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Sep 26, 2020",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Image.network(images[0]),
                            height: 100,
                            width: 100,
                          ),
                          Container(
                              height: 100,
                              width: 100,
                              child: Image.network(images[1]))
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white70,
                            child: Icon(
                              MaterialIcons.store,
                              color: Colors.black12,
                            ),
                          ),
                          Text(
                            "Zooler Official Store",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        itemCount: items.length,
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
