import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class BuildingList extends StatefulWidget{
  final double sizeH,sizeW;
  BuildingList({this.sizeH,this.sizeW});
  @override
  _BuildingListState createState() => _BuildingListState();
}
class _BuildingListState extends State<BuildingList>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("  Building : ",style:TextStyle(color: Colors.blueGrey),),
            Spacer(),
            DragObject(Dataname: "BD1",Marker: "images/building/BD1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "BD2",Marker: "images/building/BD2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "BD3",Marker: "images/building/BD3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "BD4",Marker: "images/building/BD4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "BD5",Marker: "images/building/BD5.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "BD6",Marker: "images/building/BD6.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
          ],),
        Divider(),
      ], ),

    );
  }

}