import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class ColorBG extends StatefulWidget{
  final double sizeH,sizeW;
  ColorBG({this.sizeH,this.sizeW});
  @override
  _ColorBGState createState() => _ColorBGState();
}
class _ColorBGState extends State<ColorBG>{
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
            DragObject(Dataname: "Abl",Marker: "images/oneblog/A-blu.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "Agr",Marker: "images/oneblog/A-grn.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "Agy",Marker: "images/oneblog/A-gry.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "Aor",Marker: "images/oneblog/A-org.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
          ],),
        Divider(),

      ], ),

    );
  }

}