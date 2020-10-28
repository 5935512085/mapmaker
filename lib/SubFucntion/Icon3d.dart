import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class Icon3D extends StatefulWidget{
  final double sizeH,sizeW;
  Icon3D({this.sizeH,this.sizeW});
  @override
  _Icon3DState createState() => _Icon3DState();
}
class _Icon3DState extends State<Icon3D>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("   3D QR : ",style:TextStyle(color: Colors.blueGrey),),
            Spacer(),
            DragObject(Dataname: "Code_Hor",Marker: "images/oneblog/H-org.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "Code_Hrd",Marker: "images/oneblog/H-red.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "Code_Hgr",Marker: "images/oneblog/H-grn.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "Code_Bbl",Marker: "images/oneblog/B-blu.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),
            DragObject(Dataname: "Code_Brd",Marker: "images/oneblog/B-org.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            Spacer(),

          ],),
        Divider(),

      ], ),

    );
  }

}