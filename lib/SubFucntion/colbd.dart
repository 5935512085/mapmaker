import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/SubFucntion/rowbd.dart';

class CRBlockDrop extends StatefulWidget{
  final int rowsize;
  final int colsize;
  final bool MultiSt;
  final String ImgName;

  CRBlockDrop({this.colsize,this.rowsize,this.MultiSt,this.ImgName});
  @override
  _CRBlockDropState createState() => _CRBlockDropState();
}

class _CRBlockDropState extends State<CRBlockDrop> {

  @override
  Widget build(BuildContext context) {
    if (widget.colsize==0 || widget.colsize==null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Column(children: <Widget>[
            Text(" - - - Please click \"Set Area\" to insert Column. - - - ")],),],);
    }else if (widget.colsize==1){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==2){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==3){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==4){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==5){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==6){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==7){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==8){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==9){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==10){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize==11){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }else if(widget.colsize>=12){
      return Column(
        children: <Widget>[
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
          new RBlockDrop(rowsize: widget.rowsize,colsize: widget.colsize ,ImgAcpt:widget.ImgName ,MultiSet:widget.MultiSt,),
        ],
      );
    }
  }
}





