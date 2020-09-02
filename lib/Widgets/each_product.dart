import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class EachProduct extends StatelessWidget {
  String images;
  EachProduct(this.images);
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 1.5, spreadRadius: .5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(
              AntDesign.hearto,
            ),
            onPressed: () {},
          ),
          Container(
            child: Image.network(
              images,
              fit: BoxFit.cover,
            ),
          ),
//          Expanded(
//            child: Container(
//              padding: EdgeInsets.all(20),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: [
//                  Text(
//                    "NIKE AIR FORCE 200",
//                    style: TextStyle(
//                      fontWeight: FontWeight.bold,
//                      fontSize: 15,
//                    ),
//                    maxLines: 1,
//                  ),
//                  Text(
//                    "Trending Now",
//                    style: TextStyle(color: Colors.blue),
//                  ),
//                  Text(
//                    "GHC240,00 ",
//                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                  )
//                ],
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
