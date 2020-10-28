import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/MakerCanvas/BlockDrop.dart';

class RBlockDrop extends StatefulWidget{

  final int rowsize;
  final double SizeH;
  final double SizeW;

  RBlockDrop(this.rowsize,this.SizeH,this.SizeW);
  @override
  _RBlockDropState createState() => _RBlockDropState();
}

class _RBlockDropState extends State<RBlockDrop> {

  @override
  Widget build(BuildContext context) {
    for(int j = 0; j<=widget.rowsize;j++){
       return Container(
         child: BlockDrop(widget.SizeW, widget.SizeH),
       width:widget.SizeW ,height: widget.SizeH,);
    }
  }
}





