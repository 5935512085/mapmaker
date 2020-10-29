import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/MakerCanvas/MultiBlock.dart';

class RBlockDrop extends StatefulWidget{

  final int rowsize;
  final int colsize;
  final String ImgAcpt;
  final bool MultiSet;
  RBlockDrop({this.rowsize,this.colsize,this.ImgAcpt,this.MultiSet});
  @override
  _RBlockDropState createState() => _RBlockDropState();
}

class _RBlockDropState extends State<RBlockDrop> {

  double SizeH,SizeW;
  bool multiR =false;
  @override
  Widget build(BuildContext context) {
    if (widget.rowsize==0 || widget.rowsize==null){
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Please click \"Set Area\" to insert Row")],);
    }else if (widget.rowsize==1){
      if(widget.colsize>=6){
        setState(() {
          SizeW = 35.0;
          SizeH = 35.0;
        });
      }else if(widget.colsize<6){
        setState(() {
          SizeW = 80.0;
          SizeH = 80.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,)],);
    }else if(widget.rowsize==2){
      if(widget.colsize>=6){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }else if(widget.colsize<6){
        setState(() {
          SizeW = 80.0;
          SizeH = 80.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }else if(widget.rowsize==3){
      if(widget.colsize>=6){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }else if(widget.colsize<6){
        setState(() {
          SizeW = 45.0;
          SizeH = 45.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }else if(widget.rowsize==4){
      if(widget.colsize>=8){
        setState(() {
          SizeW = 35.0;
          SizeH = 35.0;
        });
      }else if(widget.colsize<8){
        setState(() {
          SizeW = 45.0;
          SizeH = 45.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }else if(widget.rowsize==5){
      if(widget.colsize>=8){
        setState(() {
          SizeW = 35.0;
          SizeH = 35.0;
        });
      }else if(widget.colsize<8){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }else if(widget.rowsize==6){
      if(widget.colsize>=8){
        setState(() {
          SizeW = 35.0;
          SizeH = 35.0;
        });
      }else if(widget.colsize<8){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }else if(widget.rowsize==7){
      if(widget.colsize>=8){
        setState(() {
          SizeW = 35.0;
          SizeH = 35.0;
        });
      }else if(widget.colsize<8){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }else if(widget.rowsize==8){
      setState(() {
        SizeW = 37.0;
        SizeH = 37.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }else if(widget.rowsize==9){
      setState(() {
        SizeW = 36.0;
        SizeH = 36.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }else if(widget.rowsize>=10){
      setState(() {
        SizeW = 35.0;
        SizeH = 35.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),
          MultiBlockDrop(SizeH: SizeH,SizeW: SizeW,AcptMulti:widget.MultiSet ,nameImg:widget.ImgAcpt ,),],);
    }
  }

}





