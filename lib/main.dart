import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Smallapp());
}
class Smallapp extends StatelessWidget {
  TextEditingController first=TextEditingController();
  TextEditingController second=TextEditingController();
  TextEditingController third=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("small app"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: first,
                decoration: InputDecoration(
                    hintText: "first number"
                ),
              ),
              TextField(
                controller: second,
                decoration: InputDecoration(
                    hintText: "second number"
                ),
              ),
              TextField(
                controller: third,
                decoration: InputDecoration(
                    hintText: "third number"
                ),
              ),
              RaisedButton(
                onPressed: (){
                  String getfirst=first.text;
                  String getsecond=second.text;
                  String getthird=third.text;
                  int a = int.parse(getfirst);
                  int b =int.parse(getsecond);
                  int c =int.parse(getthird);
                  if ((a<b)&&(a<c))
                  {
                    print( getfirst + "is smallest");
                  }
                  else if((b<c)&&(b<a))
                  {
                    print(getsecond +"is smallest");
                  }
                  else
                  {
                    print(getthird +"is smallest");
                  }
                },
                color: Colors.white,
                child: Text("smallest"),


              )
            ],
          ),
        ),
      ),
    );
  }
}
