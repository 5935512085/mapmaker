import 'package:flutter/material.dart';

class getBoxImg extends StatefulWidget {
  final int indexPic;
  final String TypePic;
  final double SizeW,SizeH;
  getBoxImg({this.TypePic, this.indexPic, this.SizeH,this.SizeW});
  @override
  _getBoxImgState createState() => _getBoxImgState();
}

class _getBoxImgState extends State<getBoxImg> {
  List<String>Folder =["images/road/",'images/oneblog/','images/parblogs/','images/QR/'];

  List<String>Ground  = ["A-blu.png", "A-grn.png","A-gry.png","A-org.png"];
  List<String>Building = ["B-blu.png","B-gry.png","B-org.png", "2.png","6.png","8.png","9.png", "2bd-tl.png","2bd-tr.png","2bd-sc.png"];
  List<String>Trees = ["G-rt.png","G-tr.png","G-tr3.png"];
  List<String>House = ["H-grn.png","H-org.png","H-red.png","2.png","6.png","8.png","9.png"];
  List<String>QR = ["Qr-1.png","Qr2.png","Qr3.png","Qr4.png","Qr5.png","Qr6.png","Qr-7.png"];
  List<String>Road = ["Rd-v.png","Rd-c.png","Rd-h.png","Rd-lt.png", "Rd-ld.png","Rd-rt.png","Rd-rd.png","Rdc-bl.png",
    "Rdc-br.png","Rdc-tl.png","Rdc-tr.png","Rdi-d.png","Rdi-l.png", "Rdi-r.png","Rdi-t.png"];

  String pathImg ;


  @override
  Widget build(BuildContext context) {
    if(widget.TypePic == 'Ground'){
      setState(() {
        pathImg = Folder.elementAt(1)+Ground.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='Building'){
      if(widget.indexPic<=2){
        setState(() {
          pathImg = Folder.elementAt(1)+Building.elementAt(widget.indexPic);
        });
        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
              filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
      }else if(widget.indexPic>2){
        setState(() {
          pathImg = Folder.elementAt(2)+Building.elementAt(widget.indexPic);
        });
        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
              filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
      }

    }else if(widget.TypePic =='Trees') {
      setState(() {
        pathImg = Folder.elementAt(1)+Trees.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='House') {
      setState(() {
        pathImg = Folder.elementAt(1)+House.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='QR') {
      setState(() {
        pathImg = Folder.elementAt(3)+QR.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='Road') {
      setState(() {
        pathImg = Folder.elementAt(0)+Road.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }
  }
}
