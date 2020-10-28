import 'package:flutter/material.dart';

class DragObject extends StatefulWidget{
  final String Marker,Dataname;
  final double sizeObjectH,sizeObjectW;

  DragObject({this.Marker,this.Dataname,this.sizeObjectW,this.sizeObjectH});
  @override
  _DragObjectState createState() => _DragObjectState();
}
class _DragObjectState extends State<DragObject>{
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
        width: widget.sizeObjectW,height:widget.sizeObjectH,
        child: Draggable(
          child:  Image.asset(widget.Marker, width: widget.sizeObjectW,height:widget.sizeObjectH,fit:BoxFit.cover ),
          data: widget.Dataname,
          feedback: Opacity(
              opacity: 0.8,
              child: Image.asset(widget.Marker,width: widget.sizeObjectW,height:widget.sizeObjectH,fit:BoxFit.cover)),
        )
    );
  }
}
