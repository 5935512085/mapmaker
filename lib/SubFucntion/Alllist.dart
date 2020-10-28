import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class IconList2 extends StatefulWidget{
  final double sizeH,sizeW;
  IconList2({this.sizeH,this.sizeW});
  @override
  _IconList2State createState() => _IconList2State();
}
class _IconList2State extends State<IconList2>{
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
            DragObject(Dataname: "Grt",Marker: "images/oneblog/G-rt.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Gtr",Marker: "images/oneblog/G-tr.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "Gwt",Marker: "images/oneblog/G-wt.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "sHbl",Marker: "images/oneblog/sH-blu.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "sHrd",Marker: "images/oneblog/sH-red.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "sHyl",Marker: "images/oneblog/sH-ylw.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "mHrd",Marker: "images/oneblog/DH-red.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "uHbl",Marker: "images/oneblog/uH-blu.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "Bbl",Marker: "images/oneblog/B-blu.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "Bgy",Marker: "images/oneblog/B-gry.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),
            DragObject(Dataname: "Bor",Marker: "images/oneblog/B-org.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),Spacer(),



          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
           // Text("[+]: ",style:TextStyle(color: Colors.blueGrey),),
            DragObject(Dataname: "Hgr",Marker: "images/oneblog/H-grn.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Hor",Marker: "images/oneblog/H-org.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "Hrd",Marker: "images/oneblog/H-red.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "AHred",Marker: "images/parblogs/a-h.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "2Bbl_gry",Marker: "images/parblogs/2bd-bl.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "2Bbr_gry",Marker: "images/parblogs/2bd-br.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "2Bml_gry",Marker: "images/parblogs/2bd-ml.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "2Bmr_gry",Marker: "images/parblogs/2bd-mr.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "2Btl_gry",Marker: "images/parblogs/2bd-tl.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "2Btr_gry",Marker: "images/parblogs/2bd-tr.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
            DragObject(Dataname: "DH",Marker: "images/parblogs/DH.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,), Spacer(),
           /* DragObject(Dataname: "HHred",Marker: "images/parblogs/2hh-red.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),
            DragObject(Dataname: "HVred",Marker: "images/parblogs/2hv-red.png",
              sizeObjectH: widget.sizeH,sizeObjectW: widget.sizeW,),*/



          ],),
        Divider(),
      ], ),

    );
  }

}