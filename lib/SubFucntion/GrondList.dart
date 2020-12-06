import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class GroundList extends StatefulWidget{
  final double sizeH,sizeW;
  GroundList({this.sizeH,this.sizeW});
  @override
  _GroundListState createState() => _GroundListState();
}
class _GroundListState extends State<GroundList>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("  Background : ",style:TextStyle(color: Colors.orangeAccent),),
            Spacer(),
            DragObject(Dataname: "AG1",Marker: "images/ground/AG1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "AG2",Marker: "images/ground/AG2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "AG3",Marker: "images/ground/AG3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "AG4",Marker: "images/ground/AG4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
          ],),
        Divider(),

      ], ),

    );
  }

}