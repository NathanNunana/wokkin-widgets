import 'package:flutter/material.dart';

class Specifications extends StatelessWidget {
  final List<String> specs = [
    "Body Type",
    "Fuel Type",
    "Air Con",
    "Drive Type",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: specs
          .map((e) => Container(
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.black12),
                        top: BorderSide(color: Colors.black12),
                        left: BorderSide(color: Colors.black12),
                        bottom: BorderSide(color: Colors.black12))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.camera,
                      color: Colors.redAccent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(e), Text("4L")],
                    ),
                  ],
                ),
              ))
          .toList(),
      childAspectRatio: 2,
    );
  }
}
