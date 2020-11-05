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

  List<String>Ground  = ["images/oneblog/A-blu.png", "images/oneblog/A-grn.png",
    "images/oneblog/A-gry.png","images/oneblog/A-org.png"];
  List<String>Building = ["images/oneblog/B-blu.png","images/oneblog/B-gry.png","images/oneblog/B-org.png",
    "images/parblogs/2bd-bl.png","images/parblogs/2bd-br.png","images/parblogs/2bd-ml.png","images/parblogs/2bd-mr.png",
    "images/parblogs/2bd-tl.png","images/parblogs/2bd-tr.png","images/parblogs/2bd-sc.png"];
  List<String>Trees = ["images/oneblog/G-rt.png","images/oneblog/G-tr.png","images/oneblog/G-tr3.png"];
  List<String>House = ["images/oneblog/H-grn.png","images/oneblog/H-org.png","images/oneblog/H-red.png"];
  List<String>QR = ["images/QR/Qr-1.png","images/QR/Qr2.png","images/QR/Qr3.png","images/QR/Qr4.png",
    "images/QR/Qr5.png","images/QR/Qr6.png","images/QR/Qr-7.png"];
  List<String>Road = ["images/road/Rd-v.png","images/road/Rd-c.png","images/road/Rd-h.png","images/road/Rd-lt.png",
    "images/road/Rd-ld.png","images/road/Rd-rt.png","images/road/Rd-rd.png","images/road/Rdc-bl.png",
    "images/road/Rdc-br.png","images/road/Rdc-tl.png","images/road/Rdc-tr.png","images/road/Rdi-d.png","images/road/Rdi-l.png",
    "images/road/Rdi-r.png","images/road/Rdi-t.png"];

  @override
  Widget build(BuildContext context) {
    if(widget.TypePic == 'Ground'){
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(Ground.elementAt(widget.indexPic),height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='Building'){
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(Building.elementAt(widget.indexPic),height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='Trees') {
      return new SizedBox(height: widget.SizeH, width: widget.SizeW,
          child: Image.asset(
            Trees.elementAt(widget.indexPic), height: widget.SizeH,
            width: widget.SizeW,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,));
    }else if(widget.TypePic =='House') {
      return new SizedBox(height: widget.SizeH, width: widget.SizeW,
          child: Image.asset(
            House.elementAt(widget.indexPic), height: widget.SizeH,
            width: widget.SizeW,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,));
    }else if(widget.TypePic =='QR') {
      return new SizedBox(height: widget.SizeH, width: widget.SizeW,
          child: Image.asset(
            QR.elementAt(widget.indexPic), height: widget.SizeH,
            width: widget.SizeW,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,));
    }else if(widget.TypePic =='Road') {
      return new SizedBox(height: widget.SizeH, width: widget.SizeW,
          child: Image.asset(
            Road.elementAt(widget.indexPic), height: widget.SizeH,
            width: widget.SizeW,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,));
    }
  }
}
