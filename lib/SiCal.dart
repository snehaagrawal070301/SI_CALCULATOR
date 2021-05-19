import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

class SiCal extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SiCalState();
  }

}

class SiCalState extends State<SiCal>{

  TextEditingController principalController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  
  var displayText = '';

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle=Theme.of(context).textTheme.caption;
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title:Text("Simple Intrest Calculator")
      ),
      body:Container(
        margin: EdgeInsets.all(15.0),
        child:ListView(
          children: <Widget>[

            getImageAsset(),

            Padding(
              padding: EdgeInsets.only(top:5.0,bottom: 5.0),
              child:TextField(
                style: textStyle,
                keyboardType: TextInputType.number,
                controller: principalController,
                decoration: InputDecoration(
                  labelText: 'Principal',
                  labelStyle: textStyle,
                  hintText: 'Enter Principle',
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(5.0)
                  )
                ),
              ),
            ) ,

            Padding(
              padding: EdgeInsets.only(top:5.0,bottom: 5.0),
              child:TextField(
                style: textStyle,
                keyboardType: TextInputType.number,
                controller: rateController,
                decoration: InputDecoration(
                  labelStyle: textStyle,
                  labelText: 'Rate of Interest',
                  hintText: 'In percent',
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),

            Row(
              children:<Widget>[
                Expanded(child:TextField(
                  style: textStyle,
                keyboardType: TextInputType.number,
                controller: timeController,
                decoration: InputDecoration(
                  labelStyle: textStyle,
                  labelText: 'Time',
                  hintText: 'Time in Years',
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(5.0)
                  )
                ),
              )),

              ]
            ),
            
            Padding(
              padding: EdgeInsets.only(top:5.0, bottom:5.0),
              child:Row(children: <Widget>[

              Expanded(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color:Theme.of(context).accentColor,
                  textColor: Theme.of(context).primaryColorDark,
                  child: Text('Calculate',textScaleFactor: 1.5,),
                  onPressed: (){
                    setState(() {
                      this.displayText= _calculateTotalReturns();
                    });

                  }
                  )
                ),

              Expanded(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color:Theme.of(context).primaryColorDark,
                  textColor: Theme.of(context).primaryColorLight,
                  child: Text('Reset',textScaleFactor: 1.5),
                  onPressed: (){
                    setState(() {
                     _reset();
                    });
                  }
                  )
                ),

            ],)
            ),
            
            Padding(
              padding: EdgeInsets.all(10.0),
              child:Text(this.displayText),
            
              ), 

          ],
        ),
      ), 
    );
  }
  Widget getImageAsset(){
    AssetImage assetImage = AssetImage('images/download.jpg');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);
    return Container(child:image,margin: EdgeInsets.all(50.0),);
  }

  String _calculateTotalReturns() {

    double principal = double.parse(principalController.text);
    double rate = double.parse(rateController.text);
    double time = double.parse(timeController.text);

    double totalAmountPayable = principal + (principal*rate*time) / 100;

    String result = 'After $time years, your investment will be worth $totalAmountPayable';
    return result;
  }

  void _reset(){
    principalController.text = '';
    rateController.text = '';
    timeController.text = '';
    displayText='';
  }
}
