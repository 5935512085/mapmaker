import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class RoadList extends StatefulWidget{
  final double sizeH,sizeW;
  RoadList({this.sizeH,this.sizeW});
  @override
  _RoadListState createState() => _RoadListState();
}
class _RoadListState extends State<RoadList>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            DragObject(Dataname: "RD1",Marker: "images/road/RD1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "RD2",Marker: "images/road/RD2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "RD3",Marker: "images/road/RD3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "RD4",Marker: "images/road/RD4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "RD5",Marker: "images/road/RD5.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "RD6",Marker: "images/road/RD6.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),

          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(" Road : ",style:TextStyle(color: Colors.blueGrey),),
            Spacer(),
            DragObject(Dataname: "RD7",Marker: "images/road/RD7.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "RD8",Marker: "images/road/RD8.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "RD9",Marker: "images/road/RD9.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "RD10",Marker: "images/road/RD10.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),

          ],),
        Divider(),
      ], ),

    );
  }

}