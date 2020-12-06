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
  List<String>Folder =["images/road/",'images/QR/',"images/building/",
    "images/combination/","images/ground/","images/houses/","images/trees/"];

  List<String>Ground  = ["AG1.png", "AG2.png","AG3.png","AG4.png"];
  List<String>Building = ["BD1.png","BD2.png","BD3.png","BD4.png","BD5.png","BD6.png"];
  List<String>Trees = ["TR1.png","TR2.png","TR3.png","TR4.png"];
  List<String>House = ["HB1.png","HB2.png","HB3.png","HB4.png",
    "HR1.png","HR2.png","HR3.png","HR4.png",
    "HY1.png","HY2.png","HY3.png","HY4.png"];
  List<String>Combine = ["BG1.png","BG2.png","BG3.png","BG4.png","BG5.png","BG6.png","BG7.png","HB1.png","HB2.png","HB3.png",
    "HG1.png","HG2.png","HG3.png","HG4.png","HL1.png","HL2.png","HL3.png","HR1.png","HR2.png","HR3.png",];
  List<String>QR = ["Qr2.png","Qr3.png","Qr4.png","Qr5.png","Qr6.png","Qr-1.png","Qr-7.png"];
  List<String>Road = ["RD1.png","RD2.png","RD3.png","RD4.png", "RD5.png","RD6.png","RD7.png","RD8.png","RD9.png","RD10.png"];

  String pathImg ;


  @override
  Widget build(BuildContext context) {
    if(widget.TypePic == 'Ground'){
      setState(() {
        pathImg = Folder.elementAt(4)+Ground.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='Building'){
        setState(() {
          pathImg = Folder.elementAt(2)+Building.elementAt(widget.indexPic);
        });
        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
              filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='Trees') {
      setState(() {
        pathImg = Folder.elementAt(6)+Trees.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='House') {
      setState(() {
        pathImg = Folder.elementAt(5)+House.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }else if(widget.TypePic =='QR') {
      setState(() {
        pathImg = Folder.elementAt(1)+QR.elementAt(widget.indexPic);
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
    }else if(widget.TypePic =='Combine') {
      setState(() {
        pathImg = Folder.elementAt(3)+Combine.elementAt(widget.indexPic);
      });
      return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
          child: Image.asset(pathImg,height: widget.SizeH ,width: widget.SizeW,
            filterQuality: FilterQuality.high,fit: BoxFit.fill,) );
    }
  }
}
