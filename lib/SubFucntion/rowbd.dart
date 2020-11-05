import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/MakerCanvas/BlockDrop.dart';

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
    if (widget.rowsize==null || widget.rowsize==null){
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Please click \"Set Area\" to insert Row")],);
    }else if (widget.rowsize==1&& widget.colsize<=14){
      if(widget.colsize>8&& widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize>=6&& widget.colsize<=8){
        setState(() {
          SizeW = 45.0;
          SizeH = 45.0;
        });
      }
      else if(widget.colsize<6){
        setState(() {
          SizeW = 80.0;
          SizeH = 80.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=17){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>17){
        setState(() {
          SizeW = 24.0;
          SizeH = 24.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,)],);
    }
    else if(widget.rowsize==2){
      if(widget.colsize>=12&& widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize<12){
        setState(() {
          SizeW = 80.0;
          SizeH = 80.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=17){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>17){
        setState(() {
          SizeW = 24.0;
          SizeH = 24.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==3){
      if(widget.colsize>=12&& widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize<12){
        setState(() {
          SizeW = 45.0;
          SizeH = 45.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=17){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>17){
        setState(() {
          SizeW = 24.0;
          SizeH = 24.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==4){
      if(widget.colsize>=12&& widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize<12){
        setState(() {
          SizeW = 45.0;
          SizeH = 45.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=17){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>17){
        setState(() {
          SizeW = 24.0;
          SizeH = 24.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,)],);
    }
    else if(widget.rowsize==5){
      if(widget.colsize>=10&& widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      } else if(widget.colsize<10){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=17){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>17){
        setState(() {
          SizeW = 24.0;
          SizeH = 24.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);}
    else if(widget.rowsize==6){
      if(widget.colsize>=11&& widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize<11){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=17){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>17){
        setState(() {
          SizeW = 24.0;
          SizeH = 24.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);}
    else if(widget.rowsize==7){
      if(widget.colsize>=12&& widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize<12){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=17){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>17){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==8){
        if(widget.colsize>=12 && widget.colsize<=14){
          setState(() {
            SizeW = 30.0;
            SizeH = 30.0;
          });
        }
        else if(widget.colsize<12){
          setState(() {
            SizeW = 40.0;
            SizeH = 40.0;
          });}
        else if(widget.colsize>14 && widget.colsize<=18){
          setState(() {
            SizeW = 25.0;
            SizeH = 25.0;
          });
        }else if(widget.colsize>18){
          setState(() {
            SizeW = 25.0;
            SizeH = 25.0;
          });
        }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==9){
      if(widget.colsize>=12 && widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize<12){
        setState(() {
          SizeW = 40.0;
          SizeH = 40.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=18){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>18){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);}
    else if(widget.rowsize==10){
      if(widget.colsize>=13 && widget.colsize<=14){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize<13){
        setState(() {
          SizeW = 35.0;
          SizeH = 35.0;
        });
      }else if(widget.colsize>14 && widget.colsize<=18){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize>18){
        setState(() {
          SizeW = 20.0;
          SizeH = 20.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==11 && widget.colsize<=19){
      if(widget.colsize>=13&& widget.colsize<=19){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }else if(widget.colsize<13){
        setState(() {
          SizeW = 30.0;
          SizeH = 30.0;
        });
      }else if(widget.colsize>19){
        setState(() {
          SizeW = 20.0;
          SizeH = 20.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==12){
      if(widget.colsize>=16 && widget.colsize<=19){
        setState(() {
          SizeW = 24.0;
          SizeH = 24.0;
        });
      }else if(widget.colsize<16){
        setState(() {
          SizeW = 28.0;
          SizeH = 28.0;
        });
      }else if(widget.colsize>19){
        setState(() {
          SizeW = 20.0;
          SizeH = 20.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==13){
      if(widget.colsize>=18){
        setState(() {
          SizeW = 24.0;
          SizeH = 24.0;
        });
      }else if(widget.colsize<18){
        setState(() {
          SizeW = 25.0;
          SizeH = 25.0;
        });
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==14){
      setState(() {
        SizeW = 25.0;
        SizeH = 25.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==15){
      setState(() {
        SizeW = 22.0;
        SizeH = 22.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==16){
        setState(() {
          SizeW = 22.0;
          SizeH = 22.0;
        });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==17){
      setState(() {
        SizeW = 19.0;
        SizeH = 19.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==18){
      setState(() {
        SizeW = 18.0;
        SizeH = 18.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize==19){
      setState(() {
        SizeW = 18.0;
        SizeH = 18.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
    else if(widget.rowsize>=20){
      setState(() {
        SizeW = 18.0;
        SizeH = 18.0;
      });
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),
          BlockDrop(SizeH: SizeH,SizeW: SizeW, auto_set:widget.MultiSet ,auto_in: widget.ImgAcpt,),],);
    }
  }

}





