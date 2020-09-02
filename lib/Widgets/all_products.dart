import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wokkinWidget/Widgets/each_product.dart';
import 'package:wokkinWidget/images.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: StaggeredGridView.countBuilder(
            padding: EdgeInsets.all(10.0),
            crossAxisCount: 4,
            shrinkWrap: true,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return EachProduct(images[index]);
            },
            staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
            mainAxisSpacing: 12.0,
            crossAxisSpacing: 12.0,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
