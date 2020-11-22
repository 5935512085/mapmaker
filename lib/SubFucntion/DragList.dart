import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class IconObjectChoices extends StatefulWidget{
  final double sizeH,sizeW;
  IconObjectChoices({this.sizeH,this.sizeW});
  @override
  _IconObjectChoicesState createState() => _IconObjectChoicesState();
}
class _IconObjectChoicesState extends State<IconObjectChoices>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            //Text("  2D Top views    ",style:TextStyle(color: Colors.blueGrey),),
            DragObject(Dataname: "AG1",Marker: "images/ground/AG1.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "Gtr",Marker: "images/oneblog/G-tr.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
//            DragObject(Dataname: "Gtr3",Marker: "images/oneblog/G-tr3.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
//            DragObject(Dataname: "HHred",Marker: "images/parblogs/2hh-red.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
//            DragObject(Dataname: "HVred",Marker: "images/parblogs/2hv-red.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
//            DragObject(Dataname: "Hgr",Marker: "images/oneblog/H-grn.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "Hor",Marker: "images/oneblog/H-org.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "Hrd",Marker: "images/oneblog/H-red.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "Bbl",Marker: "images/oneblog/B-blu.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
//            DragObject(Dataname: "Bgy",Marker: "images/oneblog/B-gry.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
//            DragObject(Dataname: "Bor",Marker: "images/oneblog/B-org.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
          ],),
//        Row(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//          Spacer(),
//            DragObject(Dataname: "2Btl_gry",Marker: "images/parblogs/2bd-tl.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "2Btr_gry",Marker: "images/parblogs/2bd-tr.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "2Bml_gry",Marker: "images/parblogs/2bd-ml.png",
//            sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "2BdSc_gry",Marker: "images/parblogs/2bd-sc.png",
//            sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "2Bmr_gry",Marker: "images/parblogs/2bd-mr.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "2Bbl_gry",Marker: "images/parblogs/2bd-bl.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//            DragObject(Dataname: "2Bbr_gry",Marker: "images/parblogs/2bd-br.png",
//              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
//        ],),
        Divider(),
      ], ),

    );
  }

}