import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class HousesList extends StatefulWidget{
  final double sizeH,sizeW;
  HousesList({this.sizeH,this.sizeW});
  @override
  _HousesListState createState() => _HousesListState();
}
class _HousesListState extends State<HousesList>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            DragObject(Dataname: "HB1",Marker: "images/houses/HB1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HB2",Marker: "images/houses/HB2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HB3",Marker: "images/houses/HB3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HB4",Marker: "images/houses/HB4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HR1",Marker: "images/houses/HR1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HR2",Marker: "images/houses/HR2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HR3",Marker: "images/houses/HR3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HR4",Marker: "images/houses/HR4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),

          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(" Houses : ",style:TextStyle(color: Colors.blueGrey),),
          Spacer(),
            DragObject(Dataname: "HY1",Marker: "images/houses/HY1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HY2",Marker: "images/houses/HY2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HY3",Marker: "images/houses/HY3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "HY4",Marker: "images/houses/HY4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),

        ],),
        Divider(),
      ], ),

    );
  }

}