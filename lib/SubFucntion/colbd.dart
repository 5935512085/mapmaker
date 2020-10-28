import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/SubFucntion/rowbd.dart';

class CRBlockDrop extends StatefulWidget{
  final int rowsize;
  final int colsize;
  final double SizeH;
  final double SizeW;

  CRBlockDrop(this.colsize,this.rowsize,this.SizeH,this.SizeW);
  @override
  _CRBlockDropState createState() => _CRBlockDropState();
}

class _CRBlockDropState extends State<CRBlockDrop> {

  @override
  Widget build(BuildContext context) {
    for(int j = 0; j<=widget.colsize;j++){
      Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RBlockDrop(widget.rowsize, widget.SizeH, widget.SizeW)
      ],);
    }
  }
}





