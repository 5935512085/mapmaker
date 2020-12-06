import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class TreesList extends StatefulWidget{
  final double sizeH,sizeW;
  TreesList({this.sizeH,this.sizeW});
  @override
  _TreesListState createState() => _TreesListState();
}
class _TreesListState extends State<TreesList>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("  Trees : ",style:TextStyle(color: Colors.orangeAccent),),
            Spacer(),
            DragObject(Dataname: "TR1",Marker: "images/trees/TR1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "TR2",Marker: "images/trees/TR2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "TR3",Marker: "images/trees/TR3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "TR4",Marker: "images/trees/TR4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
          ],),
        Divider(),

      ], ),

    );
  }

}