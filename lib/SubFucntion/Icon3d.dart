import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DragObjects.dart';

class Icon3D extends StatefulWidget{
  final double sizeH,sizeW;
  Icon3D({this.sizeH,this.sizeW});
  @override
  _Icon3DState createState() => _Icon3DState();
}
class _Icon3DState extends State<Icon3D>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("   3D QR : ",style:TextStyle(color: Colors.blueGrey),),
            Spacer(),
//

          ],),
        Divider(),

      ], ),

    );
  }

}