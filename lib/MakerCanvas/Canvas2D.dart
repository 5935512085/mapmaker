import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:mapmaker/MakerCanvas/Formation2.dart';
import 'package:mapmaker/SubFucntion/DragBlist.dart';

import 'package:mapmaker/SubFucntion/DragList.dart';
import 'package:mapmaker/SubFucntion/Icon3d.dart';
import 'package:mapmaker/SubFucntion/IconObj3D.dart';

import 'dart:typed_data';
import 'dart:ui' as ui;

import 'BlockDropWay.dart';



class Canvas2D extends StatefulWidget {

  @override
  _Canvas2DState createState() => _Canvas2DState();
  double SizeCH =5.0, SizeCW =5.0; // small junction scale
  double SizeWH =30.0, SizeWW =5.0; // Vertical junction scale
  double SizeHH =5.0,SizeHW =30.0; // Horizontal junction scale
  double SizeMH =30.0,SizeMW =30.0; // Main Present scale

  double SizeDragH = 5.0,SizeDragW =5.0;
  String stateScale = "Zoom";
  bool val = false;
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
class _Canvas2DState extends State<Canvas2D> {
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
                  Text("  Reference Area 150m X 150m ",style:TextStyle(color: Colors.black87,fontSize: 16)),
                ],
              ),
              Divider(),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  Column(children: <Widget>[
                    BlockDropWay(widget.SizeCH, widget.SizeCW),
                    BlockDropWay(widget.SizeHH,widget.SizeHW),
                  ],)
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  Column(children: <Widget>[
                    BlockDropWay(widget.SizeCH, widget.SizeCW),
                    BlockDropWay(widget.SizeHH,widget.SizeHW),
                  ],)
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  Column(children: <Widget>[
                    BlockDropWay(widget.SizeCH, widget.SizeCW),
                    BlockDropWay(widget.SizeHH,widget.SizeHW),
                  ],)
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  Column(children: <Widget>[
                    BlockDropWay(widget.SizeCH, widget.SizeCW),
                    BlockDropWay(widget.SizeHH,widget.SizeHW),
                  ],)
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  Column(children: <Widget>[
                    BlockDropWay(widget.SizeCH, widget.SizeCW),
                    BlockDropWay(widget.SizeHH,widget.SizeHW),
                  ],)
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  Column(children: <Widget>[
                    BlockDropWay(widget.SizeCH, widget.SizeCW),
                    BlockDropWay(widget.SizeHH,widget.SizeHW),
                  ],)
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  Column(children: <Widget>[
                    BlockDropWay(widget.SizeCH, widget.SizeCW),
                    BlockDropWay(widget.SizeHH,widget.SizeHW),
                  ],)
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  FormArea1(
                    SizeCH: widget.SizeCH,SizeCW: widget.SizeCW,
                    SizeHH: widget.SizeHH,SizeHW: widget.SizeHW,
                    SizeWH: widget.SizeWH,SizeWW: widget.SizeWW,
                    SizeMH: widget.SizeMH,SizeMW: widget.SizeMW,
                  ),
                  Column(children: <Widget>[
                    BlockDropWay(widget.SizeCH, widget.SizeCW),
                    BlockDropWay(widget.SizeHH,widget.SizeHW),
                  ],)
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),
                BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),
                BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),
                BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),
                BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),
                BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),
                BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),
                BlockDropWay(widget.SizeCH, widget.SizeCW),BlockDropWay(widget.SizeWH, widget.SizeWW),
                BlockDropWay(widget.SizeCH, widget.SizeCW)
              ],
              ),

              Divider(),
              new IconObjectChoices(sizeH:36.0,sizeW: 30.0,),
              new Icon3D(sizeW: 30.0,sizeH: 30.0,),
              new ColorBG(sizeW: 30,sizeH: 30,),
              Row(
                children: <Widget>[
                  Spacer(),
                  Container(
                    height: 35.0 ,width: 160.0, decoration: Txborder(),
                    child: new FlatButton(
                      child: Row(children: <Widget>[
                        new Switch(
                          value: widget.val,
                          onChanged:(bool e)=> status(e),
                          activeColor: Colors.white ,),
                        new Text(widget.stateScale,style: TextStyle(color: Colors.white,),),
                      ],

                      ),
                    ),
                  ),
                  Spacer(),
                  Container(height: 35.0 ,width: 100.0, decoration: Txborder(),
                    child: new FlatButton.icon(
                      label: Text(" Save ", style: TextStyle(color: Colors.white,),),
                      icon: Icon(Icons.save_alt,color: Colors.white,),
                      onPressed: (){
                        _captureScreenshot(_screen);
                      },
                    ),
                  ),
                  Spacer(),],),
            ],),
        ),
      ),
    );
  }
  void status(bool e){
    setState(() {
      if(e){
        widget.val = e;
        widget.SizeCH =17.5; widget.SizeCW =17.5; // small junction scale
        widget.SizeHH =17.5; widget.SizeHW =17.5; // Vertical junction scale
        widget.SizeWH =17.5 ; widget.SizeWW =17.5; // Horizontal junction scale
        widget.SizeMH =17.5; widget.SizeMW =17.5; // Main Present scale
        widget.SizeDragH = 17.5;
        widget.SizeDragW= 17.5;
        widget.stateScale = "Zoom in";
      } else{
        widget.val = e;
        widget.SizeCH =5.0; widget.SizeCW =5.0; // small junction scale
        widget.SizeHH =5.0; widget.SizeHW =30.0; // Vertical junction scale
        widget.SizeWH =30.0 ; widget.SizeWW =5.0; // Horizontal junction scale
        widget.SizeMH =30.0; widget.SizeMW =30.0; // Main Present scale
        widget.SizeDragH = 5.0;
        widget.SizeDragW= 5.0;
        widget.stateScale = "Zoom Out";
      }
    });
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


