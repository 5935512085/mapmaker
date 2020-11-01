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
          color: Colors.blueAccent ),
      borderRadius: BorderRadius.all(
          Radius.circular((5.0))),
      color: Colors.lightBlueAccent[50]
  );
}

class _BuildingState extends State<Building> {
  int getindex = 0;

  createAlertDialogArea(BuildContext context){
    return showDialog(context: context , builder: (context){
      return AlertDialog(
        title: Text("To determine the map area. Please Insert number of column and row."),
        content:Column( mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Container(
              width: 120,height: 50,
              child: TextField(
                decoration: InputDecoration(hintText: "Row only 1-10"),
                keyboardType: TextInputType.number,
                controller: setRow,
              ),
            ),Spacer(),
            Container(
              width: 150,height: 50,
              child: TextField(
                decoration: InputDecoration(hintText: "Column only 1-12"),
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
            Row( crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Column(
                children: <Widget>[
                  Center(child: Text("Top views 2D images")),
                  Container(width: 90,height: 35,decoration: Txborder3() ,
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
              ),],),
            Divider(),
            Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Column(
                children: <Widget>[
                  Center(child: Text("Images for showing 3D model")),
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
              ),],),


          ]),

      );
    });

  }

  void AutoFill(bool toggle){
  setState(() {
    if(toggle){
      describe ='Clickfill';
      toggleVal = true;
      defaultImg = BlockDrop().TakeImg();

    }else {
      toggleVal = false;
      toggle =false;
      describe ='Dragfill';
    }
  });
  }
  String describe='Dragfill';
  String defaultImg ='';
  bool toggleVal=false;
  var initRow=0;
  var initCol=0;
  final setRow = new TextEditingController();
  final setCol = new TextEditingController();

  GlobalKey  _screen = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      body: RepaintBoundary(
        key: _screen,
        child: ListView(
          children: <Widget>[
            Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(child:Text(" Area estimate: ${initRow*15}m X ${initCol*15}m ",
                          style:TextStyle(color: Colors.black87,fontSize: 16)),),
                    Divider(),
                    Center(child: CRBlockDrop(ImgName: defaultImg,MultiSt: toggleVal,rowsize: initRow ,colsize: initCol,),),
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
          ],
        ),
    ));
  }
  toggleButton(bool toggle){
    setState(() {
      toggleVal=!toggleVal;
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


