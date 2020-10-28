import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'BlockDrop.dart';
import 'BlockDropWay.dart';

class FormArea1 extends StatefulWidget{
  final double SizeCH,SizeCW; // small junction scale
  final double SizeHH,SizeHW; // Vertical junction scale
  final double SizeWH,SizeWW; // Horizontal junction scale
  final double SizeMH,SizeMW; // Main Present scale

  FormArea1({this.SizeCH,this.SizeCW,this.SizeHH,this.SizeHW,this.SizeWH,this.SizeWW,this.SizeMH,this.SizeMW});

  @override
  _FormArea1State createState() => _FormArea1State();
}

class _FormArea1State extends State<FormArea1> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW)],),
          Row(children: <Widget>[
            BlockDropWay(widget.SizeHH,widget.SizeHW),BlockDrop(widget.SizeMH, widget.SizeMW),BlockDropWay(widget.SizeHH,widget.SizeHW),BlockDrop(widget.SizeMH, widget.SizeMW)],),
        ],
      ),
    );
  }
}
