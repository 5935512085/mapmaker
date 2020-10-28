import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class IconRoad extends StatefulWidget{
  final double sizeH,sizeW;
  IconRoad({this.sizeH,this.sizeW});
  @override
  _IconRoadState createState() => _IconRoadState();
}
class _IconRoadState extends State<IconRoad>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            DragObject(Dataname: "Rdv",Marker: "images/road/Rd-v.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdir",Marker: "images/road/Rdi-r.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdil",Marker: "images/road/Rdi-l.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdlt",Marker: "images/road/Rd-lt.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdrt",Marker: "images/road/Rd-rt.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdctr",Marker: "images/road/Rdc-tr.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdctl",Marker: "images/road/Rdc-tl.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            DragObject(Dataname: "Rdh",Marker: "images/road/Rd-h.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdid",Marker: "images/road/Rdi-d.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdit",Marker: "images/road/Rdi-t.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdld",Marker: "images/road/Rd-ld.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdrd",Marker: "images/road/Rd-rd.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdcbl",Marker: "images/road/Rdc-bl.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdcbr",Marker: "images/road/Rdc-br.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Rdc",Marker: "images/road/Rd-c.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
          ],),
        Divider(),

      ], ),

    );
  }

}