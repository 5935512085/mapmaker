import 'package:flutter/material.dart';
import 'package:mapmaker/SubFucntion/BuildingList.dart';
import 'package:mapmaker/SubFucntion/ComBuildingList.dart';
import 'package:mapmaker/SubFucntion/ComHouseList.dart';
import 'package:mapmaker/SubFucntion/GrondList.dart';
import 'package:mapmaker/SubFucntion/HousesList.dart';
import 'package:mapmaker/SubFucntion/RQBuildingList.dart';
import 'package:mapmaker/SubFucntion/RoadList.dart';
import 'package:mapmaker/SubFucntion/TreesList.dart';

class Categories extends StatefulWidget {
  final int  getindex;
  Categories({this.getindex});
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    if(widget.getindex==0){
      return Center(child: new Text("- - - Please set the category. - - -"));
    }else if(widget.getindex==1){
      return new QRBuildingList(sizeH: 30.0,sizeW: 30.0);
    }else if(widget.getindex==2){
      return new HousesList(sizeW: 30.0,sizeH: 30.0);
    }else if(widget.getindex==3){
      return new GroundList(sizeH: 30.0,sizeW: 30.0);
    }else if(widget.getindex==4){
      return new RoadList(sizeW: 30.0,sizeH: 30.0);
    }else if(widget.getindex==5){
      return new TreesList(sizeW: 30.0,sizeH: 30.0);
    }else if(widget.getindex==6){
      return new CombineHouseList(sizeW: 30.0,sizeH: 30.0);
    }else if(widget.getindex==7){
      return new CombineBuildingList(sizeW: 30.0,sizeH: 30.0);
    }else if (widget.getindex==8){
      return new BuildingList(sizeW: 30.0,sizeH: 30.0);
    }
  }
}

