import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class QRBuildingList extends StatefulWidget{
  final double sizeH,sizeW;
  QRBuildingList ({this.sizeH,this.sizeW});
  @override
  _QRBuildingListState createState() => _QRBuildingListState();
}
class _QRBuildingListState extends State<QRBuildingList >{
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
            DragObject(Dataname: "QR1",Marker: "images/QR/Qr-1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "QR2",Marker: "images/QR/Qr2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "QR3",Marker: "images/QR/Qr3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "QR4",Marker: "images/QR/Qr4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "QR5",Marker: "images/QR/Qr5.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "QR6",Marker: "images/QR/Qr6.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "QR7",Marker: "images/QR/Qr-7.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
          ],),
        Divider(),

      ], ),

    );
  }

}