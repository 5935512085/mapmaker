import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class IconObject3D extends StatefulWidget{
  final double sizeH,sizeW;
  IconObject3D({this.sizeH,this.sizeW});
  @override
  _IconObject3DState createState() => _IconObject3DState();
}
class _IconObject3DState extends State<IconObject3D>{
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
            DragObject(Dataname: "Code2",Marker: "images/parblogs/2bd-ml.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Code1",Marker: "images/parblogs/2bd-mr.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Code3",Marker: "images/parblogs/2bd-tl.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Code4",Marker: "images/parblogs/2bd-tr.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Code5",Marker: "images/parblogs/2bd-bl.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Code6",Marker: "images/parblogs/2bd-br.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Code7",Marker: "images/parblogs/2bd-sc.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
          ],),
        Divider(),

      ], ),

    );
  }

}