import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/MakerCanvas/newBDCV.dart';


void main(){
  runApp(new MaterialApp(
    home: new Homepage(),
    routes: <String, WidgetBuilder>{
      "/BasicArea": (BuildContext context) => new Building(),

    },
  ));
}

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(" Map Maker "),
        backgroundColor: Colors.black45,),
      body: new Container( color: Colors.white,
        child: new Center(
          child: Wrap(children: [
            Center(
              child: Container( height: 200, width: 200,
                child: SizedBox(width:200,height: 200,
                    child: Image.asset("images/icons/Map Maker.png",)),
              ),
            ),
            Center(
              child: Container( height: 60, width: 300,
                child: Column(
                  children: <Widget>[
                    Text(" Welcome to Map Maker V.1 ",
                      style: TextStyle(
                          fontSize: 20, color: Colors.blueAccent),
                          textAlign: TextAlign.center,),
                    Text(" How to make a Map ?",
                      style: TextStyle(
                          fontSize: 18,color: Colors.lightBlueAccent),
                          textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: 200, width: 320,
                color: Colors.blueGrey[20],
                child: Column(
                  children: <Widget>[
                    Text("  Choose scale area to design 2D/3D map ",
                      style: TextStyle(
                          fontSize: 16,color: Colors.black),
                          textAlign: TextAlign.center,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton.icon(
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                              highlightColor: Colors.red,
                              icon:Icon(Icons.add_to_photos, color: Colors.white,),
                              label:Text(" Start Design ",style: TextStyle(fontSize: 14)),
                              onPressed: (){
                                Navigator.of(context).pushNamed("/BasicArea");
                              },
                            ),
                          ],

                        ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton.icon(
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          highlightColor: Colors.red,
                          label: Text(" Guidebook ",style: TextStyle(fontSize: 14)),
                          icon: Icon(Icons.book, color: Colors.white,),
                          onPressed: (){
                            Navigator.of(context).pushNamed("/");
                          },
                        ),
                      ],

                    ),

                       /* RaisedButton.icon(
                          color: Colors.blueAccent, textColor: Colors.white,
                          highlightColor: Colors.red,
                          label: Text(" 600m X 840m ",style: TextStyle(fontSize: 14)),
                          icon: Icon(Icons.add_to_photos, color: Colors.white,),
                          onPressed: (){Navigator.of(context).pushNamed("/Canvas22");},
                        ),*/
                      ],


                ),
              ),
            ),

            /* Container( height: 100, width: 300,
              child: Column(
                children: <Widget>[
                  Text(" AR Camera for 3D Map ",
                    style: TextStyle(fontSize: 16,color: Colors.black),textAlign: TextAlign.center,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton.icon(
                        color: Colors.pink,
                        textColor: Colors.white,
                        highlightColor: Colors.red,
                        icon: Icon(Icons.camera_alt),
                        label: Text("AR Camera"),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ],

              ),
            ),*/

          ],
          ),

        ) ,

      ),
    );
  }
}


