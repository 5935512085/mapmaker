import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:mapmaker/MakerCanvas/BasicArea.dart';
import 'package:mapmaker/SubFucntion/DragBlist.dart';
import 'package:mapmaker/SubFucntion/DragList.dart';
import 'package:mapmaker/SubFucntion/IconObj3D.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:mapmaker/SubFucntion/ListRoad.dart';
import 'package:mapmaker/SubFucntion/colbd.dart';

class Building extends StatefulWidget {

  @override
  _BuildingState createState() => _BuildingState();

}
BoxDecoration Txborder(){
  return BoxDecoration(
      border: Border.all(
          width: 1,
          color: Colors.white ),
      borderRadius: BorderRadius.all(
          Radius.circular((8.0))),
      color: Colors.blueAccent
  );
}
class _BuildingState extends State<Building> {
  var ColA;
  var RowA;
  TextEditingController InputColA = new TextEditingController();
  TextEditingController InputRowA = new TextEditingController();

  GlobalKey  _screen = new GlobalKey();
  void stateval(){
    setState(() {
      ColA = InputColA;
      RowA = InputRowA;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      body: Stack(
        key: _screen,
        children: <Widget>[
          new Container(
            width: double.infinity,height: double.infinity,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//              Container(child: Row(
//                children: <Widget>[
//                  TextField(
//                    controller: InputColA,
//                    keyboardType: TextInputType.number,
//                    decoration: new InputDecoration(hintText: "column"),
//                  ),
//                  TextField(
//                    controller: InputRowA,
//                    keyboardType: TextInputType.number,
//                    decoration: new InputDecoration(hintText: "column"),
//                  ),
//                  RaisedButton(
//                    child: Text(" Ok "),
//                    onPressed: (){
//                      stateval();
//                      },)
//
//                        ],
//                      ),),
                  CRBlockDrop(5,5, 35.0, 35.0),


                ],),
            ),

        ],
      ),
    );
  }

}


