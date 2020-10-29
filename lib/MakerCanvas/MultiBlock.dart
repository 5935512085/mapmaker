import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/MakerCanvas/BlockDrop.dart';

class MultiBlockDrop extends StatefulWidget{

  final double SizeH;
  final double SizeW;
  final bool AcptMulti;
  final String nameImg;

  MultiBlockDrop({this.SizeW,this.SizeH,this.AcptMulti,this.nameImg});
  @override
  _MultiBlockDropState createState() => _MultiBlockDropState();
}

class _MultiBlockDropState extends State<MultiBlockDrop> {
  BoxDecoration BoXBorder(){
    return BoxDecoration(
        border: Border.all(
            width: 1,
            color: Colors.blueGrey ),
        borderRadius: BorderRadius.all(
            Radius.circular((5.0)))
    );
  }
  BoxDecoration Txborder2(){
    return BoxDecoration(
        border: Border.all(
            width: 1,
            color: Colors.redAccent ),
        borderRadius: BorderRadius.all(
            Radius.circular((2.0))),
        color: Colors.redAccent
    );
  }
  String ImgSet;
  @override
  Widget build(BuildContext context) {

    if(widget.AcptMulti==true){

      return Container(height: widget.SizeH,width: widget.SizeW,
        child: FlatButton(
            onPressed: (){
              setState(() {
                if(widget.nameImg!=''){
                  ImgSet=widget.nameImg.toString();
                  BlockDrop(SizeH: widget.SizeH,SizeW: widget.SizeW,auto_in: ImgSet,auto_set: widget.AcptMulti,);
                }
              });
            },
            child: Container(decoration:Txborder2() ,
                child:BlockDrop(SizeH: widget.SizeH,SizeW: widget.SizeW,auto_in: widget.nameImg,auto_set: widget.AcptMulti,))),
      );
    }
    else if(widget.AcptMulti==false){
      return BlockDrop(SizeH: widget.SizeH,SizeW: widget.SizeW,auto_in: widget.nameImg,);
//      if(widget.nameImg == 'Abl'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/A-blu.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Agr'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/A-grn.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Agy'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/A-gry.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Aor'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/A-org.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Bbl'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/B-blu.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Bgy'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/B-gry.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Bor'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/B-org.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Grt'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/G-rt.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Gtr' ){
//        return  new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/G-tr.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Gtr3'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/G-tr3.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Gwt' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/G-wt.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Hgr' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/H-grn.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Hor' ){
//        return  new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/H-org.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Hrd' ){
//        return  new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/H-red.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='sHbl' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/sH-blu.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='sHrd' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/sH-red.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='sHyl' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/sH-ylw.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='mHrd' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/DH-red.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='uHbl' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/oneblog/uH-blu.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Code1' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2bd-bl.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Code2' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2bd-br.png",height: widget.SizeH ,width: widget.SizeW,) ) ;
//      }else if(widget.nameImg =='Code3' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2bd-ml.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Code4'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2bd-mr.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Code5' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2bd-tl.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Code6' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2bd-tr.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Code7' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/a-h.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == '2Bbl_gry'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2hv-red.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == '2Bbr_gry' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2hh-red.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == '2Bml_gry'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/DH.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == '2Bmr_gry' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/parblogs/2bd-sc.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == '2Btl_gry'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/QR/Qr-1.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='2Btr_gry' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/QR/Qr2.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'AHred'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/QR/Qr3.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='HVred' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/QR/Qr5.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='HHred' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/QR/Qr6.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='DH' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/QR/Qr-7.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='2BdSc_gry' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rd-v.png",height: widget.SizeH ,width: widget.SizeW,) ) ;
//      }else if(widget.nameImg =='2BdSc_gry' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rd-c.png",height: widget.SizeH ,width: widget.SizeW,));
//      }else if(widget.nameImg =='Rdid' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rd-h.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Rdil' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rd-lt.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Rdir' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rd-ld.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Rdit' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rd-rt.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Rdc' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rd-rd.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Rdv'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rdc-bl.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Rdh'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rdc-br.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Rdcbl' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rdc-tl.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Rdcbr' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rdc-tr.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Rdctl'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rdi-d.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Rdctr'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rdi-l.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == 'Rdrd'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rdi-r.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg =='Rdrt' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Image.asset("images/road/Rdi-t.png",height: widget.SizeH ,width: widget.SizeW,) );
//      }else if(widget.nameImg == '' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Container(decoration: BoXBorder(), child: Icon(Icons.add,color: Colors.red,size: 10.0,)));
//      }else if(widget.nameImg == 'Rdld' ){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Container(decoration: BoXBorder(), child: Icon(Icons.add,color: Colors.red,size: 10.0,)));//Unsetting
//      }else if(widget.nameImg == 'Rdlt'){
//        return new SizedBox(height: widget.SizeH ,width: widget.SizeW,
//            child: Container(decoration: BoXBorder(), child: Icon(Icons.add,color: Colors.red,size: 10.0,)));//Unsetting
//      }
    }
  }

}





