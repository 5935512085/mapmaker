import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapmaker/MakerCanvas/MultiBlock.dart';
import 'package:mapmaker/SubFucntion/Categories.dart';
import 'package:mapmaker/SubFucntion/colbd.dart';

class SetMenutoolsbar extends StatefulWidget {
  final bool statemenu;
  final bool toggleValue;
  final String imgMulti;
  SetMenutoolsbar({this.statemenu,this.toggleValue,this.imgMulti});
  @override
  _SetMenutoolsbarState createState() => _SetMenutoolsbarState();
}
BoxDecoration Txborder(){
  return BoxDecoration(
      border: Border.all(
          width: 1,
          color: Colors.white ),
      borderRadius: BorderRadius.all(
          Radius.circular((8.0))),
      color: Colors.blueAccent
  );
}
class Category{
  int id;
  String nameImg;
  Category(this.id,this.nameImg);
  static List<Category> getCategory(){
    return <Category>[
      Category(1,"Road"),
      Category(2,"Building"),
      Category(3,"QR code"),
      Category(4,"Background"),
    ];
  }
}

class _SetMenutoolsbarState extends State<SetMenutoolsbar> {
  void initState() {
    _dropdownMenuItem = buildDropdownItems(_category);
    _selectedCatagory = _dropdownMenuItem[0].value;
    super.initState();
  }
  List<Category> _category = Category.getCategory();
  List<DropdownMenuItem<Category>> _dropdownMenuItem;
  Category _selectedCatagory;
  @override
  List<DropdownMenuItem<Category>> buildDropdownItems(List category){
    List<DropdownMenuItem<Category>> items = List();
    for(Category category in category){
      items.add(DropdownMenuItem(value: category ,child: Text(category.nameImg),),);
    }return items;
  }
  var initRow=0;
  var initCol=0;
  final setRow = new TextEditingController();
  final setCol = new TextEditingController();
  String setCategory = null;

  createAlertDialogArea(BuildContext context){
    return showDialog(context: context , builder: (context){
      return AlertDialog(
        title: Text("To determine the map area. Please Insert number of column and row."),
        content:Column( mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Container(
              width: 120,height: 50,
              child: TextField(
                decoration: InputDecoration(hintText: "Row only 1-10"),
                keyboardType: TextInputType.number,
                controller: setRow,
              ),
            ),Spacer(),
            Container(
              width: 150,height: 50,
              child: TextField(
                decoration: InputDecoration(hintText: "Column only 1-12"),
                keyboardType: TextInputType.number,
                controller: setCol,
              ),
            ),Spacer(),
          ],) ,
        actions: <Widget>[
          Container(height:35.0, width:100.0,
            decoration: Txborder(),
            child: FlatButton(onPressed: (){
              Navigator.of(context).pop(
                  setState(() {
                    initRow = int.parse(setRow.text);
                    initCol = int.parse(setCol.text);

                  }));},
                child: Text(" OK ", style: TextStyle(color: Colors.white,),)),),
        ],
      );
    });
  }

  onchangeDrop(Category selectedCategory){
    Navigator.of(context).pop(setState(() {
      _selectedCatagory = selectedCategory;
      setCategory = _selectedCatagory.nameImg;
    }));
  }

  createAlertDialogCategories(BuildContext context){
    return showDialog(context: context , builder: (context){
      return AlertDialog(
        title: Text("Select Categories of images"),
        content:Column( mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" Select images to design "),
            SizedBox(
              height: 20.0,
            ),
            DropdownButton(
              value: _selectedCatagory,
              items: _dropdownMenuItem,
              onChanged: onchangeDrop,),
            SizedBox(height: 20.0,),
            Text("selected : ${_selectedCatagory.nameImg}"),
          ],),
      );
    });

  }
  bool toggleVal=false;
  bool hideButt = true;
  bool toggleB ;
  String imageSet;
  String nameimg;
  @override
  Widget build(BuildContext context) {
    if(widget.statemenu==true){
     return Column(
       children: <Widget>[
         Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Spacer(),
             Text(" Area estimate: ${initRow*15}m X ${initCol*15}m ",
                 style:TextStyle(color: Colors.black87,fontSize: 16)),
             Spacer(),
           ],
         ),
         Divider(),
         new CRBlockDrop(rowsize: initRow,colsize:initCol,MultiSt:toggleVal ,ImgName:nameimg ),
         Divider(),
         Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(children: <Widget>[
                Center(
                  child: SizedBox(child: MultiBlockDrop(
                    SizeW: 70,SizeH: 70,AcptMulti: widget.toggleValue,nameImg: widget.imgMulti,),),
                )
              ],),
              Column(children: <Widget>[
                Center(child: Column(children: <Widget>[
                  Container(
                          child: AnimatedContainer(duration: Duration(milliseconds: 1000),
                            height:35.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: widget.toggleValue?Colors.redAccent:Colors.lightBlueAccent.withOpacity(0.5)
                            ),
                            child: Stack(
                              children: <Widget>[
                                AnimatedPositioned(
                                  duration: Duration(milliseconds: 1000),
                                  curve: Curves.easeIn,
                                  top: 3.0,
                                  left: widget.toggleValue?60.0:0.0,
                                  right: widget.toggleValue?0.0:60.0,
                                  child: InkWell(
                                    onTap: toggleButton(toggleB),
                                    child: AnimatedSwitcher(
                                      duration: Duration(milliseconds: 1000),
                                      transitionBuilder: (Widget child, Animation<double> animation){
                                          return RotationTransition(
                                            child: child,turns: animation,
                                          );
                                    },
                                    child: widget.toggleValue?Icon(Icons.check_circle,color:Colors.yellowAccent,size: 32.0, key: UniqueKey()
                                    ): Icon(Icons.remove_circle_outline,color:Colors.white,size: 32.0, key: UniqueKey(),
                                    ),
                                  ),
                                )
                                ),],
                            ),
                          ),
                        ),
                  Container(decoration: Txborder(),width: 130,height: 35.0,
                    child: FlatButton.icon(
                        onPressed: null,
                        icon: Icon(Icons.arrow_back,color: Colors.white,),
                        label: Text("Fast input",style:TextStyle(color: Colors.white),)),
                  )

                  ],
                ),)
              ],),
              Column(children: <Widget>[
                Center(child: Container(height:35.0, width:102.0,
                  decoration: Txborder(),
                  child: FlatButton(onPressed: (){
                    setState(() {
                      createAlertDialogArea(context);
                    });},
                      child: Text("Set Area", style: TextStyle(color: Colors.white,),)),),),
                Center(child: Container(height:35.0, width:102.0,
                  decoration: Txborder(),
                  child: FlatButton(onPressed: (){
                    setState(() {
                      createAlertDialogCategories(context);
                    });},
                      child: Text("Categories", style: TextStyle(color: Colors.white,),)),),)
              ],)
            ],
          ),
         Row(children: <Widget>[
           new Categories(getindex: 2,)
         ],)
       ],
     );
    }else if(widget.statemenu==false){
      return Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              Text(" Area estimate: ${initRow*15}m X ${initCol*15}m ",
                  style:TextStyle(color: Colors.black87,fontSize: 16)),
              Spacer(),
            ],
          ),
          Divider(),
          new CRBlockDrop(rowsize: initRow,colsize:initCol,MultiSt:toggleVal ,ImgName:nameimg ),
          Divider(),
          SizedBox(height: 1,),
        ],
      );
    }
  }
  toggleButton(bool toggle){
    setState(() {
      toggleB =!widget.toggleValue;
    });
  }
}
