import 'package:flutter/material.dart';
import 'package:mapmaker/SubFucntion/DragBlist.dart';
import 'package:mapmaker/SubFucntion/DragList.dart';
import 'package:mapmaker/SubFucntion/IconObj3D.dart';
import 'package:mapmaker/SubFucntion/ListRoad.dart';

class Categories extends StatefulWidget {
  final int  getindex;
  Categories({this.getindex});
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    if(widget.getindex==1){
      return new IconRoad(sizeW: 30.0,sizeH: 30.0);
    }else if(widget.getindex==3){
      return new IconObject3D(sizeH: 30.0,sizeW: 30.0);
    }else if(widget.getindex==2){
      return new IconObjectChoices(sizeW: 30.0,sizeH: 30.0);
    }else if(widget.getindex==4){
      return new ColorBG(sizeH: 30.0,sizeW: 30.0);
    }else if(widget.getindex==0){
      return Center(child: new Text("- - - Please set the category. - - -"));
    }
  }
}

