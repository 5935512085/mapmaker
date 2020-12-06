import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class CombineBuildingList extends StatefulWidget{
  final double sizeH,sizeW;
  CombineBuildingList({this.sizeH,this.sizeW});
  @override
  _CombineBuildingListState createState() => _CombineBuildingListState();
}
class _CombineBuildingListState extends State<CombineBuildingList>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(" Combine  ",style:TextStyle(color: Colors.blueGrey),),
            Spacer(),
            DragObject(Dataname: "cBG1",Marker: "images/combination/BG1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cBG2",Marker: "images/combination/BG2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cBG3",Marker: "images/combination/BG3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cBG4",Marker: "images/combination/BG4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(" Building : ",style:TextStyle(color: Colors.blueGrey),),
            Spacer(),
            DragObject(Dataname: "cBG5",Marker: "images/combination/BG5.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cBG6",Marker: "images/combination/BG6.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cBG7",Marker: "images/combination/BG7.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
          ],),
        Divider(),
      ], ),

    );
  }

}