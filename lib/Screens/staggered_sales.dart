import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wokkinWidget/images.dart';

class StaggeredSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 7,
      itemBuilder: (context, index) {
        return Card(
//            elevation: 8.0,
            child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Hero(
                        tag: index,
                        child: FadeInImage(
                          width: MediaQuery.of(context).size.width,
                          image: NetworkImage(items[
                              index]), // NetworkImage(staticData[index].images),
                          fit: BoxFit.cover,
                          placeholder: AssetImage("assets/images/app_logo.png"),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        left: 5.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lawadka Socks and baby accessories, Both men and women's wear",
                            style: TextStyle(
                              wordSpacing: 1,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Text(
                              "USD 1.44",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("4.8"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  Text("11 Sold")
                                ],
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.more_horiz,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                                onPressed: () {},
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                onTap: () {
                  //
                }));
      },
      staggeredTileBuilder: (index) =>
          StaggeredTile.count(2, index.isEven ? 3 : 4),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    ));
  }
}
