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
  /// Qr ///////////////////////////////////
  bool Acpt_QRl = false, Acpt_QR2 = false, Acpt_QR3 =false , Acpt_QR4 = false, Acpt_QR5 = false,Acpt_QR6 = false, Acpt_QR7 = false;
  /// Road ///////////////
  bool Acpt_Rdl = false,Acpt_Rd2 = false, Acpt_Rd3 = false, Acpt_Rd4 = false,Acpt_Rd5= false,Acpt_Rd6 = false,Acpt_Rd7 = false;
  bool Acpt_Rd8= false,Acpt_Rd9 = false, Acpt_Rdl0 = false;
  /// Trees ///////////////////////////////////////
  bool Acpt_TR1=false, Acpt_TR2=false, Acpt_TR3=false, Acpt_TR4=false;
  /// Houses///////////////////////////////////////
  bool Acpt_HB1=false, Acpt_HB2=false, Acpt_HB3=false, Acpt_HB4=false;
  bool Acpt_HR1=false, Acpt_HR2=false, Acpt_HR3=false, Acpt_HR4=false;
  bool Acpt_HY1=false, Acpt_HY2=false, Acpt_HY3=false, Acpt_HY4=false;
  /// ground ///////////////////////////////////////
  bool Acpt_AG1=false, Acpt_AG2=false, Acpt_AG3=false ,Acpt_AG4=false;
  /// Building  ///////////////////////////////////////
  bool Acpt_BD1 = false, Acpt_BD2 = false, Acpt_BD3 = false, Acpt_BD4 = false, Acpt_BD5 = false, Acpt_BD6 = false;
  /// Combination  ///////////////////////////////////////
  bool Acpt_cBG1 = false , Acpt_cBG2 = false, Acpt_cBG3 = false, Acpt_cBG4 = false, Acpt_cBG5 = false , Acpt_cBG6 = false, Acpt_cBG7 = false ;
  bool Acpt_cHB1 = false, Acpt_cHB2 = false , Acpt_cHB3 = false;
  bool Acpt_cHG1 = false , Acpt_cHG2 =false, Acpt_cHG3 =false , Acpt_cHG4 =false;
  bool Acpt_cHL1 =false, Acpt_cHL2 =false, Acpt_cHL3 =false;
  bool Acpt_cHR1 =false, Acpt_cHR2 =false, Acpt_cHR3 =false;

  bool AcptSecondkey =false;
  List<String> ImgSt;
  String NameImg;
  double _angleButt = 0;
  List<String>T_img  = ['Ground','Building','Trees','House','QR','Road','Combine'];

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
        /// QR //////////////////////////////////////////////////////////////////////
        return Acpt_QRl? ImgButt(4, 0) : Acpt_QR2? ImgButt(4, 1) : Acpt_QR3? ImgButt(4, 2) : Acpt_QR4? ImgButt(4, 3)
            : Acpt_QR5? ImgButt(4, 4) : Acpt_QR6? ImgButt(4, 5) : Acpt_QR7? ImgButt(4, 6)
        /// Trees //////////////////////////////////////////////////////////////////////
            : Acpt_TR1? ImgButt(2, 0) : Acpt_TR2? ImgButt(2, 1) : Acpt_TR3? ImgButt(2, 2): Acpt_TR4? ImgButt(2, 3)
        /// Building //////////////////////////////////////////////////////////////////////
            : Acpt_BD1 ? ImgButt(1, 0) : Acpt_BD2 ? ImgButt(1, 1) : Acpt_BD3? ImgButt(1, 2) : Acpt_BD4? ImgButt(1, 3)
            : Acpt_BD5? ImgButt(1, 4): Acpt_BD6? ImgButt(1, 5)
        ///Road //////////////////////////////////////////////////////////////////////
            : Acpt_Rdl ? ImgButt(5, 0) : Acpt_Rd2? ImgButt(5, 1) : Acpt_Rd3? ImgButt(5, 2) : Acpt_Rd4? ImgButt(5, 3)
            : Acpt_Rd5 ? ImgButt(5, 4): Acpt_Rd6? ImgButt(5, 5):Acpt_Rd7? ImgButt(5, 6):Acpt_Rd8? ImgButt(5, 7)
            :Acpt_Rd9? ImgButt(5, 8): Acpt_Rdl0 ? ImgButt(5, 9)
        /// House //////////////////////////////////////////////////////////////////////
            : Acpt_HB1 ? ImgButt(3, 0) : Acpt_HB2 ? ImgButt(3, 1) :Acpt_HB3 ? ImgButt(3, 2) :Acpt_HB4 ? ImgButt(3, 3)
            : Acpt_HR1 ? ImgButt(3, 4) : Acpt_HR2 ? ImgButt(3, 5) : Acpt_HR3 ? ImgButt(3, 6): Acpt_HR4 ? ImgButt(3, 7)
            : Acpt_HY1 ? ImgButt(3, 8) : Acpt_HY2 ? ImgButt(3, 9) : Acpt_HY3 ? ImgButt(3, 10): Acpt_HY4 ? ImgButt(3, 11)
        /// Ground //////////////////////////////////////////////////////////////////////
            :Acpt_AG1? ImgButt(0, 0):Acpt_AG2? ImgButt(0, 1) :Acpt_AG3? ImgButt(0, 2) :Acpt_AG4? ImgButt(0, 3)
        /// Combine//////////////////////////////////////////////////////////////////////
            :Acpt_cBG1? ImgButt(6, 0):Acpt_cBG2? ImgButt(6, 1):Acpt_cBG3? ImgButt(6, 2) :Acpt_cBG4? ImgButt(6,3)
            :Acpt_cBG5? ImgButt(6,4):Acpt_cBG6? ImgButt(6,5):Acpt_cBG7? ImgButt(6,6)
            :Acpt_cHB1? ImgButt(6, 7):Acpt_cHB2? ImgButt(6, 8):Acpt_cHB3? ImgButt(6, 9)
            :Acpt_cHG1? ImgButt(6, 10): Acpt_cHG2? ImgButt(6, 11): Acpt_cHG3? ImgButt(6, 12): Acpt_cHG4? ImgButt(6, 13)
            :Acpt_cHL1? ImgButt(6, 14):Acpt_cHL2? ImgButt(6, 15): Acpt_cHL3 ? ImgButt(6, 16)
            :Acpt_cHR1? ImgButt(6, 17):Acpt_cHR2? ImgButt(6, 18):Acpt_cHR3? ImgButt(6, 19)

            : data.isEmpty ? new SizedBox(height: widget.SizeH,width: widget.SizeW,
            child: Container(decoration: BoXBorder(), child: Icon(Icons.add,color: Colors.red,size: 13.0,),))
            : Opacity(opacity: 0.7,
          child:SizedBox(child: Container(decoration: BoXBorder2()),height: widget.SizeH,width: widget.SizeW,),);
      },
      onAccept:(data){
        /// BUILDING ////////////////////////////////////////////////////////
        if (data =='BD1'){
          setState(() {
            Acpt_BD1=true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
             Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
             Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
             Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'BD2'){
          setState(() {
            Acpt_BD2 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'BD3'){
          setState(() {
            Acpt_BD3=true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'BD4'){
          setState(() {
            Acpt_BD4=true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'BD5'){
          setState(() {
            Acpt_BD5=true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'BD6'){
          setState(() {
            Acpt_BD6=true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        /// Combination ////////////////////////////////////////////////////////
        else if (data == 'cBG1'){
          setState(() {
            Acpt_cBG1 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
             Acpt_cBG2 = false; Acpt_cBG3 = false; Acpt_cBG4 = false ;Acpt_cBG5 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cBG2'){
          setState(() {
            Acpt_cBG2 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG3 = false; Acpt_cBG4 = false ;Acpt_cBG5 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cBG3'){
          setState(() {
            Acpt_cBG3 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;Acpt_cBG5 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cBG4'){
          setState(() {
            Acpt_cBG4 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false ;Acpt_cBG5 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cBG5'){
          setState(() {
            Acpt_cBG5 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false ;Acpt_cBG4 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cBG6'){
          setState(() {
            Acpt_cBG6 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false ;Acpt_cBG4 = false ;Acpt_cBG5 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cBG7'){
          setState(() {
            Acpt_cBG7 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG3 = false ;Acpt_cBG4 = false ;Acpt_cBG5 = false ;Acpt_cBG6 = false ;
            Acpt_cHB1 = false; Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHB1'){
          setState(() {
            Acpt_cHB1 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHB2'){
          setState(() {
            Acpt_cHB2 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false; Acpt_cHB3 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHB3'){
          setState(() {
            Acpt_cHB3 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB2 = false; Acpt_cHB1 = false;
            Acpt_cHG1 = false; Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHG1'){
          setState(() {
            Acpt_cHG1 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG2 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHG2'){
          setState(() {
            Acpt_cHG2 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG3 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHG3'){
          setState(() {
            Acpt_cHG3 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG4 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHG4'){
          setState(() {
            Acpt_cHG4 = true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHL1'){
          setState(() {
            Acpt_cHL1 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHL2'){
          setState(() {
            Acpt_cHL2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHL3'){
          setState(() {
            Acpt_cHL3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHR1'){
          setState(() {
            Acpt_cHR1 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR2 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHR2'){
          setState(() {
            Acpt_cHR2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR3 =false;
          });
        }
        else if (data == 'cHR3'){
          setState(() {
            Acpt_cHR3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false;
          });
        }
        /// Ground ////////////////////////////////////////////////////////
        else if (data == 'AG1'){
          setState(() {
            Acpt_AG1 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'AG2'){
          setState(() {
            Acpt_AG2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG1=false; Acpt_AG3=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'AG3'){
          setState(() {
            Acpt_AG3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'AG4'){
          setState(() {
            Acpt_AG4 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        /// Houses ////////////////////////////////////////////////////////
        else if (data == 'HB1'){
          setState(() {
            Acpt_HB1 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
             Acpt_HB2=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HB2' ){
          setState(() {
            Acpt_HB2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB3=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HB3'){
          setState(() {
            Acpt_HB3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HB4'){
          setState(() {
            Acpt_HB4 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HR1' ){
          setState(() {
            Acpt_HR1 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
             Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HR2'){
          setState(() {
            Acpt_HR2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HR3'){
          setState(() {
            Acpt_HR3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HR4'){
          setState(() {
            Acpt_HR4 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HY1'){
          setState(() {
            Acpt_HY1 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HY2'){
          setState(() {
            Acpt_HY2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HY3'){
          setState(() {
            Acpt_HY3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'HY4'){
          setState(() {
            Acpt_HY4 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        /// QR ////////////////////////////////////////////////////////
        else if (data == 'Qr2'){
          setState(() {
            Acpt_QR2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR3 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'Qr3'){
          setState(() {
            Acpt_QR3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'Qr4'){
          setState(() {
            Acpt_QR4 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'Qr5'){
          setState(() {
            Acpt_QR5 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'Qr6'){
          setState(() {
            Acpt_QR6 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'Qr7'){
          setState(() {
            Acpt_QR7 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'Qr1'){
          setState(() {
            Acpt_QRl =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QR7 = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        /// Road ////////////////////////////////////////////////////////
        else if (data == 'RD1'){
          setState(() {
            Acpt_Rdl =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD2'){
          setState(() {
            Acpt_Rd2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD3'){
          setState(() {
            Acpt_Rd3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD4'){
          setState(() {
            Acpt_Rd4 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd3= false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD5'){
          setState(() {
            Acpt_Rd5 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd4 = false;Acpt_Rd3= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD6'){
          setState(() {
            Acpt_Rd6 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd4 = false;Acpt_Rd3= false;Acpt_Rd5 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD7'){
          setState(() {
            Acpt_Rd7 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd4 = false;Acpt_Rd3= false;Acpt_Rd5 = false;Acpt_Rd6 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD8'){
          setState(() {
            Acpt_Rd8 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd4 = false;Acpt_Rd3= false;Acpt_Rd5 = false;Acpt_Rd6 = false;
            Acpt_Rd7= false;Acpt_Rd9 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD9'){
          setState(() {
            Acpt_Rd9 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd4 = false;Acpt_Rd3= false;Acpt_Rd5 = false;Acpt_Rd6 = false;
            Acpt_Rd8= false;Acpt_Rd7 = false; Acpt_Rdl0 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'RD10'){
          setState(() {
            Acpt_Rdl0 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rdl = false; Acpt_Rd2 = false; Acpt_Rd4 = false;Acpt_Rd3= false;Acpt_Rd5 = false;Acpt_Rd6 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rd7 = false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        /// Trees ////////////////////////////////////////////////////////
        else if (data == 'TR1'){
          setState(() {
            Acpt_TR1 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false; Acpt_Rdl=false;
            /// Trees ///////////////////////////////////////
             Acpt_TR2=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'TR2'){
          setState(() {
            Acpt_TR2 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false; Acpt_Rdl=false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR3=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'TR3'){
          setState(() {
            Acpt_TR3 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false; Acpt_Rdl=false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR4=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
        else if (data == 'TR4'){
          setState(() {
            Acpt_TR4 =true;

            /// QR ///////////////////////////////////////////////
            Acpt_QRl = false; Acpt_QR2 =false; Acpt_QR3 = false; Acpt_QR4 = false; Acpt_QR5 = false; Acpt_QR6 = false; Acpt_QR7 = false;
            /// Road //////////////////////////////////////////////
            Acpt_Rd2 = false; Acpt_Rd3 = false; Acpt_Rd4 = false;Acpt_Rd5= false;Acpt_Rd6 = false;Acpt_Rd7 = false;
            Acpt_Rd8= false;Acpt_Rd9 = false; Acpt_Rdl0 = false; Acpt_Rdl=false;
            /// Trees ///////////////////////////////////////
            Acpt_TR1=false; Acpt_TR2=false; Acpt_TR3=false;
            /// Houses///////////////////////////////////////
            Acpt_HB1=false; Acpt_HB2=false; Acpt_HB4=false;Acpt_HB3=false;
            Acpt_HR1=false; Acpt_HR2=false; Acpt_HR3=false; Acpt_HR4=false;
            Acpt_HY1=false; Acpt_HY2=false; Acpt_HY3=false; Acpt_HY4=false;
            /// ground ///////////////////////////////////////
            Acpt_AG2=false; Acpt_AG1=false;Acpt_AG4=false; Acpt_AG3=false;
            /// Building  ///////////////////////////////////////
            Acpt_BD1=false;  Acpt_BD2 = false; Acpt_BD3 = false; Acpt_BD4 = false; Acpt_BD5 = false; Acpt_BD6 = false;
            /// Combination  ///////////////////////////////////////
            Acpt_cBG1 = false; Acpt_cBG2 = false; Acpt_cBG4 = false ;
            Acpt_cHB1 = false;Acpt_cHB2 = false; Acpt_cHB3 = false;
            Acpt_cHG1 =false; Acpt_cHG2 =false; Acpt_cHG3 =false;Acpt_cHG4 = false;
            Acpt_cHL1 =false; Acpt_cHL2 =false; Acpt_cHL3 =false;
            Acpt_cHR1 =false; Acpt_cHR2 =false; Acpt_cHR3=false;
          });
        }
      } ,
    );

  }

}





