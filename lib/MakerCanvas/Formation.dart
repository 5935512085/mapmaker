import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'BlockDrop.dart';
import 'BlockDropWay.dart';

class FormArea extends StatefulWidget{
  final double SizeCH,SizeCW; // small junction scale
  final double SizeHH,SizeHW; // Vertical junction scale
  final double SizeWH,SizeWW; // Horizontal junction scale
  final double SizeMH,SizeMW; // Main Present scale

   FormArea({this.SizeCH,this.SizeCW,this.SizeHH,this.SizeHW,this.SizeWH,this.SizeWW,this.SizeMH,this.SizeMW});

  @override
  _FormAreaState createState() => _FormAreaState();
}

class _FormAreaState extends State<FormArea> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            BlockDropWay(widget.SizeCH, widget.SizeCW),
            BlockDropWay(widget.SizeWH, widget.SizeWW),
            BlockDropWay(widget.SizeWH, widget.SizeWW)],),
          Row(children: <Widget>[
            BlockDropWay(widget.SizeHH,widget.SizeHW),
            BlockDrop(widget.SizeMH, widget.SizeMW),
            BlockDrop(widget.SizeMH, widget.SizeMW)],),
          Row(children: <Widget>[
            BlockDropWay(widget.SizeHH,widget.SizeHW),
            BlockDrop(widget.SizeMH, widget.SizeMW),
            BlockDrop(widget.SizeMH, widget.SizeMW)],),
        ],
      ),
    );
  }
}
