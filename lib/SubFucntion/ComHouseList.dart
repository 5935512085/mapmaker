import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class CombineHouseList extends StatefulWidget{
  final double sizeH,sizeW;
  CombineHouseList({this.sizeH,this.sizeW});
  @override
  _CombineHouseListState createState() => _CombineHouseListState();
}
class _CombineHouseListState extends State<CombineHouseList>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(" Combine Houses : ",style:TextStyle(color: Colors.blueGrey),),
            Spacer(),
            DragObject(Dataname: "cHL3",Marker: "images/combination/HL3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHL2",Marker: "images/combination/HL2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHL1",Marker: "images/combination/HL1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHR3",Marker: "images/combination/HR3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHR2",Marker: "images/combination/HR2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHR1",Marker: "images/combination/HR1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),

          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Spacer(),
            DragObject(Dataname: "cHB3",Marker: "images/combination/HB3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHB2",Marker: "images/combination/HB2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHB1",Marker: "images/combination/HB1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHG1",Marker: "images/combination/HG1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHG2",Marker: "images/combination/HG2.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHG3",Marker: "images/combination/HG3.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "cHG4",Marker: "images/combination/HG4.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),

          ],),
        Divider(),
      ], ),

    );
  }

}