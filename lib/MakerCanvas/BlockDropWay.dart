import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlockDropWay extends StatefulWidget{
  final double sizeW;
  final double sizeH;
  BlockDropWay(this.sizeW,this.sizeH);
  @override
  _BlockDropWayState createState() => _BlockDropWayState();
}
BoxDecoration BoXBorder(){
  return BoxDecoration(
      border: Border.all(
          width: 1,
          color: Colors.blueGrey ),
      borderRadius: BorderRadius.all(
          Radius.circular((5.0)))
  );
}

class _BlockDropWayState extends State<BlockDropWay> {
  bool Acpt_Abl=false, Acpt_Agr=false, Acpt_Agy=false, Acpt_Aor=false;

  @override
  Widget build(BuildContext context) {
    return new DragTarget(
      builder: (context, List<String> data, rj){
        return Acpt_Abl ? SizedBox(height: widget.sizeH,width: widget.sizeW,
              child: Image.asset("images/oneblog/A-blu.png", height: widget.sizeH,width: widget.sizeW,fit: BoxFit.fill,) )
            : Acpt_Agr ? SizedBox(height: widget.sizeH,width: widget.sizeW,
              child: Image.asset("images/oneblog/A-grn.png", height: widget.sizeH,width: widget.sizeW,fit: BoxFit.fill))
            : Acpt_Agy ? SizedBox(height: widget.sizeH,width: widget.sizeW,
              child: Image.asset("images/oneblog/A-gry.png", height: widget.sizeH,width: widget.sizeW,fit: BoxFit.fill))
            : Acpt_Aor ? SizedBox(height: widget.sizeH,width: widget.sizeW,
            child: Image.asset("images/oneblog/A-org.png", height: widget.sizeH,width: widget.sizeW,fit: BoxFit.fill))

            : data.isEmpty ?
        SizedBox(
            height: widget.sizeH,width: widget.sizeW,
            child: Container(color: Colors.grey[90],decoration: BoXBorder(),
              child: Icon(Icons.add,size: 8.0,color: Colors.orangeAccent,)))
            : Opacity(
                opacity: 0.7,
                child: SizedBox(
                    child: Container(
                      color: Colors.blueAccent,),
                  height: widget.sizeH,width: widget.sizeW,),);
      },

      onAccept:(data){
        if (data =='Aor'){
          setState(() {
            Acpt_Aor = true;
          });
        }
        else if (data == 'Agy'){
          setState(() {
            Acpt_Agy =true ;
          });
        }
        else if (data == 'Agr'){
          setState(() {
            Acpt_Agr = true ;
          });
        }
        else if (data == 'Abl'){
          setState(() {
            Acpt_Abl = true ;
          });
        }

      } ,
    );
  }
}




