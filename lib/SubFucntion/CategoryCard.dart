import 'package:flutter/material.dart';
import 'package:mapmaker/SubFucntion/DragObjects.dart';
class CategoryCard extends StatefulWidget {

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          DragObject(sizeObjectW:35.0 ,sizeObjectH:35.0 ,Marker:"images/oneblog/G-rt.png" ,Dataname: "Grt",),
          DragObject(sizeObjectW:35.0 ,sizeObjectH:35.0 ,Marker:"images/oneblog/G-rt.png" ,Dataname: "Grt",),
          DragObject(sizeObjectW:35.0 ,sizeObjectH:35.0 ,Marker:"images/oneblog/G-rt.png" ,Dataname: "Grt",),
          DragObject(sizeObjectW:35.0 ,sizeObjectH:35.0 ,Marker:"images/oneblog/G-rt.png" ,Dataname: "Grt",),
          DragObject(sizeObjectW:35.0 ,sizeObjectH:35.0 ,Marker:"images/oneblog/G-rt.png" ,Dataname: "Grt",)
        ],),
    );
  }
}
