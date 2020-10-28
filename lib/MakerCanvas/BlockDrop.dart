import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlockDrop extends StatefulWidget{

  final double SizeH;
  final double SizeW;

  BlockDrop(this.SizeW,this.SizeH);
     @override
    _BlockDropState createState() => _BlockDropState();
}

class _BlockDropState extends State<BlockDrop> {
  BoxDecoration BoXBorder(){
    return BoxDecoration(
      border: Border.all(
          width: 1,
          color: Colors.blueGrey ),
      borderRadius: BorderRadius.all(
          Radius.circular((5.0)))
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

  @override
  Widget build(BuildContext context) {
    return new DragTarget(
      builder: (context, List<String> data, rj){
///////////// oneblog //////////////////////////////////////////////////////////////////////
        return Acpt_Abl ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/A-blu.png",height: widget.SizeH ,width: widget.SizeW,) ) //Fix
            : Acpt_Agr ?  new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/A-grn.png",height: widget.SizeH ,width: widget.SizeW,) )//Fix
            : Acpt_Agy ?  new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/A-gry.png",height: widget.SizeH ,width: widget.SizeW,) )//Fix
            : Acpt_Aor ?  new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/A-org.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Bbl ?  new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/B-blu.png",height: widget.SizeH ,width: widget.SizeW,) )//Fix
            : Acpt_Bgy ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/B-gry.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Bor ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/B-org.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Grt ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/G-rt.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Gtr ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/G-tr.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Gtr3 ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/G-tr3.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Gwt? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/G-wt.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Hgr? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/H-grn.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Hor? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/H-org.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_Hrd? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/H-red.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_sHbl? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/sH-blu.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_sHrd? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/sH-red.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_sHyl? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/sH-ylw.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_mHrd? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/DH-red.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_uHbl? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/oneblog/uH-blu.png",height: widget.SizeH ,width: widget.SizeW,) )
///////////// parblogs //////////////////////////////////////////////////////////////////////
            : Acpt_2Bbl_gry? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2bd-bl.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_2Bbr_gry? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2bd-br.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_2Bml_gry? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2bd-ml.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_2Bmr_gry? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2bd-mr.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_2Btl_gry? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2bd-tl.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_2Btr_gry? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2bd-tr.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_AHred ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/a-h.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_2HVred ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2hv-red.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_2HHred ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2hh-red.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_DH ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/DH.png",height: widget.SizeH ,width: widget.SizeW,) )
            : Acpt_2BdSc_gry ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/parblogs/2bd-sc.png",height: widget.SizeH ,width: widget.SizeW,) )

        //Code
            :QRl ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/QR/Qr-1.png",height: widget.SizeH ,width: widget.SizeW,) )
            :QR2 ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/QR/Qr2.png",height: widget.SizeH ,width: widget.SizeW,) )
            :QR3 ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/QR/Qr3.png",height: widget.SizeH ,width: widget.SizeW,) )
            :QR4 ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/QR/Qr4.png",height: widget.SizeH ,width: widget.SizeW,) )
            :QR5 ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/QR/Qr5.png",height: widget.SizeH ,width: widget.SizeW,) )
            :QR6 ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/QR/Qr6.png",height: widget.SizeH ,width: widget.SizeW,) )
            :QR7 ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/QR/Qr-7.png",height: widget.SizeH ,width: widget.SizeW,) )
        //Road
            :Acpt_Rdv ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rd-v.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdc ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rd-c.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdh ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rd-h.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdlt ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rd-lt.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdld ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rd-ld.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdrt ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rd-rt.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdrd ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rd-rd.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdcbl ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rdc-bl.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdcbr ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rdc-br.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdctl ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rdc-tl.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdctr ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rdc-tr.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdid ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rdi-d.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdil ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rdi-l.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdir ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rdi-r.png",height: widget.SizeH ,width: widget.SizeW,) )
            :Acpt_Rdit ? new SizedBox(height: widget.SizeH ,width: widget.SizeW,
            child: Image.asset("images/road/Rdi-t.png",height: widget.SizeH ,width: widget.SizeW,) )

            : data.isEmpty ? new SizedBox(height: widget.SizeH,width: widget.SizeW,
                child: Container(decoration: BoXBorder(),
                  child: Icon(Icons.add,color: Colors.blueGrey,size: 9.0,),))
            : Opacity(opacity: 0.7,child:
              SizedBox(
                child: Container(
                  color: Colors.blueAccent,),
                height: widget.SizeH,width: widget.SizeW,),);
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
        else if (data == '2Bml_gry'){
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
        else if (data == '2Btr_gry'){
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





