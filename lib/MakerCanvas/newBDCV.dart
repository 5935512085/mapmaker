import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:mapmaker/MakerCanvas/BlockDrop.dart';
import 'package:mapmaker/SubFucntion/Categories.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:mapmaker/SubFucntion/colbd.dart';
import 'package:vector_math/vector_math_64.dart' as vector3;


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
BoxDecoration Txborder3(){
  return BoxDecoration(
      border: Border.all(
          width: 2,
          color: Colors.orangeAccent ),
      borderRadius: BorderRadius.all(
          Radius.circular((5.0))),
  );
}

class _BuildingState extends State<Building> {
  int getindex = 0;

  createAlertDialogArea(BuildContext context){
    return showDialog(context: context , builder: (context){
      return AlertDialog(
        title: Text(" Please set the column and row numbers."),
        content:Column( mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Container(
              width: 120,height: 50,
              child: TextField(
                decoration: InputDecoration(hintText: "Row only 1-20"),
                keyboardType: TextInputType.number,
                controller: setRow,
              ),
            ),Spacer(),
            Container(
              width: 150,height: 50,
              child: TextField(
                decoration: InputDecoration(hintText: "Column only 1-20"),
                keyboardType: TextInputType.number,
                controller: setCol,
              ),
            ),Spacer(),
          ],) ,
        actions: <Widget>[
          Container(height:35.0, width:100.0,
            decoration: Txborder(),
            child: FlatButton(onPressed: (){
              Navigator.of(context).pop(
                  setState(() {
                initRow = int.parse(setRow.text);
                initCol = int.parse(setCol.text);

              }));},
                child: Text(" OK ", style: TextStyle(color: Colors.white,),)),),
        ],
      );
    });
  }
  createAlertDialogCategories(BuildContext context){
    return showDialog(context: context , builder: (context){
      return AlertDialog(
        content:Column( mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(child: Text("Top views 2D images")),
            Center(
              child: Container(height: 200,width: 300,
                child: Wrap(spacing: 2.0,runAlignment: WrapAlignment.start,runSpacing: 2.0,
                  children: <Widget>[
                    Container(width: 85,height: 35,decoration: Txborder3() ,
                      child: FlatButton.icon(
                          onPressed: (){
                            Navigator.of(context).pop(
                                setState(() {
                                  getindex = 2;
                                })
                            );
                          },
                          icon: Icon(Icons.home,color: Colors.black,size: 10.0,),
                          label: Text("House",style: TextStyle(color: Colors.black,fontSize: 10),)) ,),
                    Container(width: 90,height: 35,decoration: Txborder3() ,
                      child: FlatButton.icon(
                          onPressed: (){
                            Navigator.of(context).pop(
                                setState(() {
                                  getindex = 1;
                                })
                            );
                          },
                          icon: Icon(Icons.location_city,color: Colors.black,size: 10.0,),
                          label: Text("Building",style: TextStyle(color: Colors.black,fontSize: 10),)) ,),
                    Container(width: 90,height: 35,decoration: Txborder3() ,
                      child: FlatButton.icon(
                          onPressed: (){
                            Navigator.of(context).pop(
                                setState(() {
                                  getindex = 4;
                                })
                            );
                          },
                          icon: Icon(Icons.blur_on,color: Colors.black,size: 10.0,),
                          label: Text("Ground",style: TextStyle(color: Colors.black,fontSize: 10),)) ,),
                  ],
                ),
              ),
            ),
            Divider(),
            Center(child: Text("Images for showing 3D model")),
            Center(
              child: Container(height: 200,width: 300,
                child: Wrap(spacing: 2.0,runAlignment: WrapAlignment.start,runSpacing: 2.0,
                  children: <Widget>[
                    Container(width: 90,height: 35,decoration: Txborder3() ,
                        child: FlatButton.icon(
                            onPressed: (){
                              Navigator.of(context).pop(
                                  setState(() {
                                    getindex = 3;
                                  })
                              );
                            },
                            icon: Icon(Icons.swap_horiz,color: Colors.black,size: 10.0,),
                            label: Text("Road",style: TextStyle(color: Colors.black,fontSize: 10),)) ,),
                  ],
                ),
              ),
            ),


          ]),

      );
    });

  }

  String defaultImg ='';
  bool toggleVal=false;
  var initRow=0;
  var initCol=0;
  final setRow = new TextEditingController();
  final setCol = new TextEditingController();
  double _angleComps = 0;

  GlobalKey  _screen = new GlobalKey();
  double _scale =1.0;
  double _previousScale =1.0;
  CompassButt(){
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Transform.rotate(
        angle: _angleComps,
        child: FlatButton(onPressed: (){
          setState(() {
            if(_angleComps>360){
              _angleComps = 0;
            }else if(_angleComps<=360){
              _angleComps = _angleComps+(0.392699082*4);
            }
          });
        },highlightColor: Colors.red,
            child:SizedBox(width: 50,height: 50,
            child: Image.asset("images/icons/compass.png",)) ),
      ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      body: SizedBox(height: double.infinity ,width: double.infinity,
                child: ListView(
                  addAutomaticKeepAlives: false,
                  cacheExtent: 200.0,
                  children: <Widget>[
                    RepaintBoundary(
                      key: _screen,
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row( crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(" Area estimate: ${initRow*15}m X ${initCol*15}m ",
                                        style:TextStyle(color: Colors.black87,fontSize: 16)),
                                  CompassButt(),
                                ],
                              ),
                              Divider(),
                              SizedBox(
                                height: 440.0,width:1200.0,
                                child: GestureDetector(
                                    onScaleStart: (ScaleStartDetails details){
                                      print(details);
                                      _previousScale = _scale;
                                      setState(() {});
                                    },
                                    onScaleEnd:(ScaleEndDetails details){
                                      print(details);
                                      _previousScale = 1.0;
                                      setState(() {});
                                    } ,
                                    onScaleUpdate: (ScaleUpdateDetails details){
                                      print(details);
                                      _scale = _previousScale * details.scale;
                                      setState(() {});
                                    } ,
                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      textDirection: TextDirection.ltr,
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.zero,
                                            child: Transform(
                                                alignment: FractionalOffset.center,
                                                transform: Matrix4.diagonal3(vector3.Vector3(_scale,_scale,_scale)),
                                                child: CRBlockDrop(ImgName: defaultImg,MultiSt: toggleVal,rowsize: initRow ,colsize: initCol,))),
                                      ],
                                    ))),]),
                    ),
                            Divider(),
                            Categories(getindex: getindex, ),
                            Row(children: <Widget>[
                              Spacer(),
                                Center(child: Container(height:35.0, width:102.0,
                                  decoration: Txborder(),
                                  child: FlatButton(onPressed: (){
                                    setState(() {
                                      createAlertDialogArea(context);
                                    });},
                                      child: Text("Set Area", style: TextStyle(color: Colors.white,),)),),),Spacer(),
                                Center(child: Container(height:35.0, width:102.0,
                                  decoration: Txborder(),
                                  child: FlatButton(onPressed: (){
                                    setState(() {
                                      createAlertDialogCategories(context);
                                    });},
                                      child: Text("Categories", style: TextStyle(color: Colors.white,),)),),),Spacer(),
                                Center(child: Column(children: <Widget>[
                                  Container(decoration: Txborder(),height: 35,width: 100,
                                    child: FlatButton.icon(
                                      onPressed:(){
                                        setState(() {
                                          _captureScreenshot(_screen);
                                        });
                                      }, icon: Icon(Icons.save_alt,color: Colors.white,),
                                      label: Text("Save",style: TextStyle(color: Colors.white)),),)]),),Spacer(),
                            ]),
                            ],),
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


