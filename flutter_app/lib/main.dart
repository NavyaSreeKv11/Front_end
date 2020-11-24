import 'package:flutter/material.dart';
import 'package:flutter_app/FadeAnimation.dart';
import 'package:flutter_app/page2.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Main.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 120,
                        top: 500,
                        width: 200,
                        height: 150,
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(bottom: 50),
                          child: Center(
                            child: FadeAnimation(1.5, Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/logo1.png')
                                  )
                              ),
                            )),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 150,),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: RaisedButton(
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.red,
                              color: Colors.white,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Page21()),
                                );
                              },
                              child: new Text("LOG IN"),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.red)
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: RaisedButton(
                              padding: const EdgeInsets.all(18.0),
                              textColor: Colors.white,
                              color: Colors.red,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Page2()),
                                );
                              },
                              child: new Text("REGISTER"),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.red)
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:10.0),
                        child:Container(
                          height:3.0,
                          width:200.0,
                          color:Colors.red,),),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}