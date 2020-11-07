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
  bool Acpt2H =false,Acpt6H =false,Acpt8H =false,Acpt9H =false;
  ///////////// multi drop /////////
  bool AcptMulti = false;

  bool AcptSecondkey =false;
  List<String> ImgSt;
  String NameImg;
  double _angleButt = 0;
  List<String>T_img  = ['Ground','Building','Trees','House','QR','Road'];

  ImgButt(int x,y){
    return new SizedBox(width: widget.SizeW,height: widget.SizeH,
      child: Transform.rotate(
        angle: _angleButt,
        child: FlatButton(onPressed: (){
          setState(() {
            if(_angleButt>360){
              _angleButt = 0;
            }else if(_angleButt<=360){
              _angleButt = _angleButt+(0.392699082*4);
            }
          });
        },highlightColor: Colors.red,
            child:Container(padding:EdgeInsets.all(0) ,
                child: getBoxImg(TypePic:T_img.elementAt(x),indexPic: y,SizeW: widget.SizeW,SizeH: widget.SizeH,),)
          ,padding: EdgeInsets.all(0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DragTarget(
          builder: (context, List<String> data , rj){
///////////// oneblog //////////////////////////////////////////////////////////////////////
            return Acpt_Abl? ImgButt(0, 0) : Acpt_Agr? ImgButt(0, 1) : Acpt_Agy? ImgButt(0, 2) : Acpt_Aor? ImgButt(0, 3)
                : Acpt_Bbl? ImgButt(1, 0) : Acpt_Bgy? ImgButt(1, 1) : Acpt_Bor? ImgButt(1, 2)
                : Acpt_Grt? ImgButt(2, 0) : Acpt_Gtr? ImgButt(2, 1) : Acpt_Gtr3? ImgButt(2, 2)
                : Acpt_Hgr? ImgButt(3, 0) : Acpt_Hor? ImgButt(3, 1) : Acpt_Hrd? ImgButt(3, 2)
///////////// parblogs //////////////////////////////////////////////////////////////////////
                : Acpt_2Bbl_gry? ImgButt(1, 3) : Acpt_2Bbr_gry? ImgButt(1, 4) : Acpt_2Bml_gry? ImgButt(1, 5)
                : Acpt_2Bmr_gry? ImgButt(1, 6) : Acpt_2Btl_gry? ImgButt(1, 7) : Acpt_2Btr_gry? ImgButt(1, 8)
                : Acpt_2BdSc_gry ? ImgButt(1, 9)
            //Code
                :QRl ? ImgButt(4, 0) :QR2 ? ImgButt(4, 1) :QR3 ? ImgButt(4, 2) :QR4 ? ImgButt(4, 3)
                :QR5 ? ImgButt(4, 4) :QR6 ? ImgButt(4, 5) :QR7 ? ImgButt(4, 6)
            //Road
                :Acpt_Rdv? ImgButt(5, 0):Acpt_Rdc? ImgButt(5, 1):Acpt_Rdh? ImgButt(5, 2) :Acpt_Rdlt? ImgButt(5, 3)
                :Acpt_Rdld? ImgButt(5, 4):Acpt_Rdrt? ImgButt(5, 5):Acpt_Rdrd? ImgButt(5, 6) :Acpt_Rdcbl? ImgButt(5, 7)
                :Acpt_Rdcbr? ImgButt(5, 8):Acpt_Rdctl? ImgButt(5, 9):Acpt_Rdctr? ImgButt(5, 10) :Acpt_Rdid? ImgButt(5, 11)
                :Acpt_Rdil? ImgButt(5, 12):Acpt_Rdir? ImgButt(5, 13):Acpt_Rdit? ImgButt(5, 14) :AcptMulti? ImgButt(5, 15)

                : data.isEmpty ? new SizedBox(height: widget.SizeH,width: widget.SizeW,
                child: Container(decoration: BoXBorder(), child: Icon(Icons.add,color: Colors.red,size: 13.0,),))
                : Opacity(opacity: 0.7,
              child:SizedBox(child: Container(decoration: BoXBorder2()),height: widget.SizeH,width: widget.SizeW,),);
          },
          onAccept:(data){
            ///////////// one blog   ////////////////////////
            if (data =='Abl'){
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
            else if (data == 'Agr'){
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
            else if (data == 'Agy'){
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
            else if (data == 'Aor'){
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
            else if (data == 'Bbl'){
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
            else if (data == 'Bgy'){
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
            else if (data == 'Bor'){
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
            else if (data == 'Grt'){
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
            else if (data == 'Gtr'){
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
            else if (data == 'Gtr3'){
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
            else if (data == 'Gwt'){
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
            else if (data == 'Hgr'){
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
            else if (data == 'Hor'){
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
            else if (data == 'Hrd'){
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
            else if (data == 'sHbl'){
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
            else if (data == 'sHrd'){
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
            else if (data == 'sHyl'){
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
            else if (data == 'mHrd'){
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
            else if (data == 'uHbl'){
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
            else if (data == 'Code1'){
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
            else if (data == 'Code2'){
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
            else if (data == 'Code3'){
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
            else if (data == 'Code4'){
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
            else if (data == 'Code5'){
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
            else if (data == 'Code6'){
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
            else if (data == 'Code7'){
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
            else if (data == '2Bbl_gry'){
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
            else if (data == '2Bbr_gry'){
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
            else if (data == '2Bml_gry' ){
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
            else if (data == '2Bmr_gry'){
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
            else if (data == '2Btl_gry'){
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
            else if (data == '2Btr_gry' ){
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
            else if (data == 'AHred'){
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
            else if (data == 'HVred'){
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
            else if (data == 'HHred'){
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
            else if (data == 'DH'){
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
            else if (data == '2BdSc_gry'){
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
            else if (data == '2BdSc_gry'){
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
            else if (data == 'Rdid'){
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
            else if (data == 'Rdil'){
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
            else if (data == 'Rdir'){
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
            else if (data == 'Rdit'){
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
            else if (data == 'Rdc'){
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
            else if (data == 'Rdv'){
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
            else if (data == 'Rdh'){
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
            else if (data == 'Rdcbl'){
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
            else if (data == 'Rdcbr'){
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
            else if (data == 'Rdctl'){
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
            else if (data == 'Rdctr'){
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
            else if (data == 'Rdrd'){
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
            else if (data == 'Rdrt'){
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
            else if (data == 'Rdld'){
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
            else if (data == 'Rdlt'){
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





