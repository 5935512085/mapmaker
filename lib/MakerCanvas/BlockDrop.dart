import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/MakerCanvas/DropImg.dart';

class BlockDrop extends StatefulWidget{

  final double SizeH;
  final double SizeW;
  String auto_in;
  final bool auto_set;
  String TakeImg(){
    final String Img = BlockDrop().auto_in;
    return Img;
  }

  BlockDrop({this.SizeW,this.SizeH,this.auto_in,this.auto_set});
     @override
    _BlockDropState createState() => _BlockDropState();
}

class _BlockDropState extends State<BlockDrop> {
  BoxDecoration BoXBorder(){
    return BoxDecoration(
      border: Border.all(
          width: 2,
          color: Colors.blueGrey[500] ),
      borderRadius: BorderRadius.all(
          Radius.circular((5.0)))
    );
  }
  BoxDecoration BoXBorder2(){
    return BoxDecoration(
        color: Colors.red,
        border: Border.all(
            width: 2,
            color: Colors.black),
        borderRadius: BorderRadius.all(
            Radius.circular((16.0)))
    );
  }
  ////////// Qr code case to drop ///////////////////////////////////
  bool QRl = false, QR2 = false, QR3 =false , QR4 = false, QR5 = false, QR6 = false, QR7 = false;
  //////// Road ///////////////
  bool Acpt_Rdc = false,Acpt_Rdh = false,Acpt_Rdv = false;
  bool Acpt_Rdld = false,Acpt_Rdlt = false,Acpt_Rdrd = false,Acpt_Rdrt = false;
  bool Acpt_Rdcbl = false,Acpt_Rdcbr = false,Acpt_Rdctl = false,Acpt_Rdctr = false;
  bool Acpt_Rdid = false,Acpt_Rdil = false,Acpt_Rdir = false,Acpt_Rdit = false;
  /////////// oneblog images  ///////////////////////////////////////
  bool Acpt_Abl=false, Acpt_Agr=false, Acpt_Agy=false, Acpt_Aor=false;
  bool Acpt_Bbl=false, Acpt_Bgy=false, Acpt_Bor=false;
  bool Acpt_Grt=false, Acpt_Gtr=false, Acpt_Gtr3=false, Acpt_Gwt=false;
  bool Acpt_Hgr=false, Acpt_Hrd=false, Acpt_Hor=false;
  bool Acpt_sHbl=false, Acpt_sHrd=false, Acpt_sHyl=false;
  bool Acpt_mHrd=false;
  bool Acpt_uHbl=false;
  /////////// parblogs images  ///////////////////////////////////////
  bool Acpt_2Bbl_gry = false, Acpt_2Bbr_gry = false;
  bool Acpt_2Bml_gry = false, Acpt_2Bmr_gry = false;
  bool Acpt_2Btl_gry = false, Acpt_2Btr_gry = false;
  bool Acpt_AHred = false;
  bool Acpt_2BdSc_gry = false;
  bool Acpt_2HVred =false, Acpt_2HHred =false;
  bool Acpt_DH =false;
  ///////////// multi drop /////////
  bool AcptMulti = false;

  bool AcptSecondkey =false;
  List<String> ImgSt;
  String NameImg;

  List<String>T_img  = ['Ground','Building','Trees','House','QR','Road'];

  @override
  Widget build(BuildContext context) {
    return new DragTarget(
          builder: (context, List<String> data , rj){
///////////// oneblog //////////////////////////////////////////////////////////////////////
            return Acpt_Abl? getBoxImg(TypePic:T_img.elementAt(0),indexPic: 0,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Agr? getBoxImg(TypePic:T_img.elementAt(0),indexPic: 1,SizeW: widget.SizeW,SizeH: widget.SizeH,)//Fix
                : Acpt_Agy? getBoxImg(TypePic:T_img.elementAt(0),indexPic: 2,SizeW: widget.SizeW,SizeH: widget.SizeH,)//Fix
                : Acpt_Aor? getBoxImg(TypePic:T_img.elementAt(0),indexPic: 3,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Bbl? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 0,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Bgy? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 1,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Bor? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 2,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Grt? getBoxImg(TypePic:T_img.elementAt(2),indexPic: 0,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Gtr? getBoxImg(TypePic:T_img.elementAt(2),indexPic: 1,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Gtr3? getBoxImg(TypePic:T_img.elementAt(2),indexPic: 2,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Hgr? getBoxImg(TypePic:T_img.elementAt(3),indexPic: 0,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Hor? getBoxImg(TypePic:T_img.elementAt(3),indexPic: 1,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_Hrd? getBoxImg(TypePic:T_img.elementAt(3),indexPic: 2,SizeW: widget.SizeW,SizeH: widget.SizeH,)
///////////// parblogs //////////////////////////////////////////////////////////////////////
                : Acpt_2Bbl_gry? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 3,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_2Bbr_gry? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 4,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_2Bml_gry? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 5,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_2Bmr_gry? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 6,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_2Btl_gry? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 7,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_2Btr_gry? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 8,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                : Acpt_2BdSc_gry ? getBoxImg(TypePic:T_img.elementAt(1),indexPic: 9,SizeW: widget.SizeW,SizeH: widget.SizeH,)
            //Code
                :QRl ? getBoxImg(TypePic:T_img.elementAt(4),indexPic: 0,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :QR2 ? getBoxImg(TypePic:T_img.elementAt(4),indexPic: 1,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :QR3 ? getBoxImg(TypePic:T_img.elementAt(4),indexPic: 2,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :QR4 ? getBoxImg(TypePic:T_img.elementAt(4),indexPic: 3,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :QR5 ? getBoxImg(TypePic:T_img.elementAt(4),indexPic: 4,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :QR6 ? getBoxImg(TypePic:T_img.elementAt(4),indexPic: 5,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :QR7 ? getBoxImg(TypePic:T_img.elementAt(4),indexPic: 6,SizeW: widget.SizeW,SizeH: widget.SizeH,)
            //Road
                :Acpt_Rdv? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 0,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdc? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 1,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdh? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 2,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdlt? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 3,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdld? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 4,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdrt? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 5,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdrd? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 6,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdcbl? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 7,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdcbr? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 8,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdctl? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 9,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdctr? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 10,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdid? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 11,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdil? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 12,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdir? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 13,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :Acpt_Rdit? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 14,SizeW: widget.SizeW,SizeH: widget.SizeH,)
                :AcptMulti? getBoxImg(TypePic:T_img.elementAt(5),indexPic: 15,SizeW: widget.SizeW,SizeH: widget.SizeH,)

                : data.isEmpty ? new SizedBox(height: widget.SizeH,width: widget.SizeW,
                child: Container(decoration: BoXBorder(), child: Icon(Icons.add,color: Colors.red,size: 13.0,),))
                : Opacity(opacity: 0.7,
              child:SizedBox(child: Container(decoration: BoXBorder2()),height: widget.SizeH,width: widget.SizeW,),);
          },
          onAccept:(data){
            ///////////// one blog   ////////////////////////
            if (data =='Abl' || (widget.auto_in=='Abl'&& widget.auto_set==true)){
              setState(() {
                Acpt_Abl=true;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Agr=false; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;

              });
            }
            else if (data == 'Agr'|| (widget.auto_in=='Agr'&& widget.auto_set==true)){
              setState(() {
                Acpt_Agr =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false;  Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;

              });
            }
            else if (data == 'Agy'|| (widget.auto_in=='Agy'&& widget.auto_set==true)){
              setState(() {
                Acpt_Agy=true;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ;  Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Aor'|| (widget.auto_in=='Aor'&& widget.auto_set==true)){
              setState(() {
                Acpt_Aor=true;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Bbl'|| (widget.auto_in=='Bbl'&& widget.auto_set==true)){
              setState(() {
                Acpt_Bbl=true;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Bgy'|| (widget.auto_in=='Bgy'&& widget.auto_set==true)){
              setState(() {
                Acpt_Bgy=true;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false;  Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Bor'|| (widget.auto_in=='Bor'&& widget.auto_set==true)){
              setState(() {
                Acpt_Bor =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Grt'|| (widget.auto_in=='Grt'&& widget.auto_set==true)){
              setState(() {
                Acpt_Grt =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Gtr'|| (widget.auto_in=='Gtr'&& widget.auto_set==true)){
              setState(() {
                Acpt_Gtr =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Gtr3'||(widget.auto_in=='Gtr3'&& widget.auto_set==true) ){
              setState(() {
                Acpt_Gtr3 =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Gwt'|| (widget.auto_in=='Gwt'&& widget.auto_set==true)){
              setState(() {
                Acpt_Gwt =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Hgr'|| (widget.auto_in=='Hgr'&& widget.auto_set==true)){
              setState(() {
                Acpt_Hgr =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Hor'|| (widget.auto_in=='Hor'&& widget.auto_set==true)){
              setState(() {
                Acpt_Hor =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Hrd'|| (widget.auto_in=='Hrd'&& widget.auto_set==true)){
              setState(() {
                Acpt_Hrd =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'sHbl'||(widget.auto_in=='sHbl'&& widget.auto_set==true) ){
              setState(() {
                Acpt_sHbl =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'sHrd'|| (widget.auto_in=='sHrd'&& widget.auto_set==true)){
              setState(() {
                Acpt_sHrd =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'sHyl'|| (widget.auto_in=='sHyl'&& widget.auto_set==true)){
              setState(() {
                Acpt_sHyl =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'mHrd'|| (widget.auto_in=='mHrd'&& widget.auto_set==true)){
              setState(() {
                Acpt_mHrd =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;

                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'uHbl'|| (widget.auto_in=='uHbl'&& widget.auto_set==true)){
              setState(() {
                Acpt_uHbl =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;

                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }

//////////  Case Code  ///////////////////
            else if (data == 'Code1'|| (widget.auto_in=='Code1'&& widget.auto_set==true)){
              setState(() {
                QRl =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Code2'|| (widget.auto_in=='Code2'&& widget.auto_set==true)){
              setState(() {
                QR2 =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Code3'|| (widget.auto_in=='Code3'&& widget.auto_set==true)){
              setState(() {
                QR3 =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false;  QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Code4'|| (widget.auto_in=='Code4'&& widget.auto_set==true)){
              setState(() {
                QR4 =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Code5'|| (widget.auto_in=='Code5'&& widget.auto_set==true)){
              setState(() {
                QR5 =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Code6'|| (widget.auto_in=='Code6'&& widget.auto_set==true)){
              setState(() {
                QR6 =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false;  QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Code7'|| (widget.auto_in=='Code7'&& widget.auto_set==true)){
              setState(() {
                QR7 =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            ////////////// case parblogs ////////
            else if (data == '2Bbl_gry'|| (widget.auto_in=='2Bbl_gry'&& widget.auto_set==true)){
              setState(() {
                Acpt_2Bbl_gry =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == '2Bbr_gry'|| (widget.auto_in=='2Bbr_gry'&& widget.auto_set==true)){
              setState(() {
                Acpt_2Bbr_gry =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == '2Bml_gry'||(widget.auto_in=='2Bml_gry'&& widget.auto_set==true) ){
              setState(() {
                Acpt_2Bml_gry =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == '2Bmr_gry'|| (widget.auto_in=='2Bmr_gry'&& widget.auto_set==true)){
              setState(() {
                Acpt_2Bmr_gry =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == '2Btl_gry'|| (widget.auto_in=='2Btl_gry'&& widget.auto_set==true)){
              setState(() {
                Acpt_2Btl_gry =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == '2Btr_gry'||(widget.auto_in=='2Btr_gry'&& widget.auto_set==true) ){
              setState(() {
                Acpt_2Btr_gry =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'AHred'|| (widget.auto_in=='AHred'&& widget.auto_set==true)){
              setState(() {
                Acpt_AHred =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'HVred'|| (widget.auto_in=='HVred'&& widget.auto_set==true)){
              setState(() {
                Acpt_2HVred =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'HHred'|| (widget.auto_in=='HHred'&& widget.auto_set==true)){
              setState(() {
                Acpt_2HHred =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'DH'|| (widget.auto_in=='DH'&& widget.auto_set==true)){
              setState(() {
                Acpt_DH =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;

              });
            }
            else if (data == '2BdSc_gry'|| (widget.auto_in=='2BdSc_gry'&& widget.auto_set==true)){
              setState(() {
                Acpt_2BdSc_gry =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == '2BdSc_gry'|| (widget.auto_in=='2BdSc_gry'&& widget.auto_set==true)){
              setState(() {
                Acpt_2BdSc_gry =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            //////Road ////////////////////
            else if (data == 'Rdid'|| (widget.auto_in=='Rdid'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdid =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdil'|| (widget.auto_in=='Rdil'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdil =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false;  Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdir'|| (widget.auto_in=='Rdir'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdir =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdit'|| (widget.auto_in=='Rdit'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdit =true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdc'|| (widget.auto_in=='Rdc'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdc=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdv'|| (widget.auto_in=='Rdv'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdv=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdh'|| (widget.auto_in=='Rdh'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdh=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false;  Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdcbl'|| (widget.auto_in=='Rdcbl'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdcbl=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdcbr'|| (widget.auto_in=='Rdcbr'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdcbr=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdctl'|| (widget.auto_in=='Rdctl'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdctl=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false;  Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdctr'|| (widget.auto_in=='Rdctr'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdctr=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdrd'|| (widget.auto_in=='Rdrd'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdrd=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false;  Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdrt'|| (widget.auto_in=='Rdrt'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdrt=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdlt = false; Acpt_Rdrd = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdld'|| (widget.auto_in=='Rdld'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdld=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdlt = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }
            else if (data == 'Rdlt'|| (widget.auto_in=='Rdlt'&& widget.auto_set==true)){
              setState(() {
                Acpt_Rdlt=true ;
                ////////// Qr code case to drop ///////////////////////////////////
                QRl = false; QR2 = false; QR3 =false ; QR4 = false; QR5 = false; QR6 = false; QR7 = false;
                //////// Road ///////////////
                Acpt_Rdc = false; Acpt_Rdh = false; Acpt_Rdv = false;
                Acpt_Rdld = false; Acpt_Rdrd = false; Acpt_Rdrt = false;
                Acpt_Rdcbl = false; Acpt_Rdcbr = false; Acpt_Rdctl = false; Acpt_Rdctr = false;
                Acpt_Rdid = false; Acpt_Rdil = false ; Acpt_Rdir = false; Acpt_Rdit = false;
                /////////// oneblog images  ///////////////////////////////////////
                Acpt_Abl=false; Acpt_Agr =false ; Acpt_Agy=false; Acpt_Aor=false;
                Acpt_Bbl=false; Acpt_Bgy=false; Acpt_Bor=false;
                Acpt_Grt=false; Acpt_Gtr=false; Acpt_Gtr3=false; Acpt_Gwt=false;
                Acpt_Hgr=false; Acpt_Hrd=false; Acpt_Hor=false;
                Acpt_sHbl=false; Acpt_sHrd=false; Acpt_sHyl=false;
                Acpt_mHrd=false;
                Acpt_uHbl=false;
                /////////// parblogs images  ///////////////////////////////////////
                Acpt_2Bbl_gry = false; Acpt_2Bbr_gry = false;
                Acpt_2Bml_gry = false; Acpt_2Bmr_gry = false;
                Acpt_2Btl_gry = false; Acpt_2Btr_gry = false;
                Acpt_AHred = false;
                Acpt_2BdSc_gry = false;
                Acpt_2HVred =false; Acpt_2HHred =false;
                Acpt_DH =false;
              });
            }

          } ,
        );

  }

}





