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



class Buildingcv extends StatefulWidget {

  @override
  _BuildingcvState createState() => _BuildingcvState();

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
class _BuildingcvState extends State<Buildingcv> {
  
  GlobalKey  _screen = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      body: RepaintBoundary(
        key: _screen,
        child: new Container(
          width: double.infinity,height: double.infinity,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(height: 35.0 ,width: 100.0, decoration: Txborder(),
                        child: new FlatButton.icon(
                          label: Text(" Save ", style: TextStyle(color: Colors.white,),),
                          icon: Icon(Icons.save_alt,color: Colors.white,),
                          onPressed: (){
                            _captureScreenshot(_screen);
                          },
                        ),
                      ),
                      ],),
                  Text("  Reference Area 187.50m X 206.25m ",style:TextStyle(color: Colors.black87,fontSize: 16)),
                  Divider(),
                ],
              ),

              new BasicArea(),
              Divider(),
              new IconObjectChoices(sizeH:30.0,sizeW: 30.0,),
              new IconObject3D(sizeW: 30.0,sizeH: 30.0,),
              new IconRoad(sizeH:30.0 ,sizeW: 30.0),
              new ColorBG(sizeW: 30,sizeH: 20,),

            ],),
        ),
      ),
    );
  }
  _captureScreenshot(_screen) async{
    RenderRepaintBoundary boundary = _screen.currentContext.findRenderObject();
    ui.Image image = await boundary.toImage();
    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);


    var filePath = await ImagePickerSaver.saveFile(
        fileData: byteData.buffer.asUint8List());
    print(filePath);
  }


}


