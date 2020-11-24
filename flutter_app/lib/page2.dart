import 'package:flutter/material.dart';
import 'package:flutter_app/FadeAnimation.dart';
import 'package:flutter_app/userprof.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2 createState() => _Page2();
}

class _Page2 extends State<Page2> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 10,
                        top: 10,
                        width: 180,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 170),
                          child: Center(
                            child: Text("Register", style: TextStyle(color: Colors.black, fontSize: 40, ),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Username",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Mobile Number",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Checkbox(
                                value: val,
                                onChanged: (bool value) {
                                  setState(() {
                                    val = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("By signing up, you agree to Nayagaadi’s Terms"),
                              Text("of Service and Privacy Policy."),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 60,),
                      SizedBox(
                        width: 170,
                        height: 50,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          textColor: Colors.white,
                          color: Colors.red,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page21()),
                            );
                          },
                          child: new Text("REGISTER"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
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


class Page21 extends StatefulWidget {
  @override
  _Page21 createState() => _Page21();
}

class _Page21 extends State<Page21> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 10,
                        top: 10,
                        width: 180,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 200),
                          child: Center(
                            child: Text("Sign In", style: TextStyle(color: Colors.black, fontSize: 40,),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email Address",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Mobile Number",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(height: 80,),
                      SizedBox(
                        width: 170,
                        height: 50,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          textColor: Colors.white,
                          color: Colors.red,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PageOtp()),
                            );
                          },
                          child: new Text("GENERATE OTP"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
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


class PageOtp extends StatefulWidget {
  @override
  _PageOtp createState() => _PageOtp();
}

class _PageOtp extends State<PageOtp> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 10,
                        top: 10,
                        width: 180,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 200),
                          child: Center(
                            child: Text("OTP", style: TextStyle(color: Colors.black, fontSize: 40, fontFamily: 'RobotoMono',),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text("An otp is send to your registered email/Mobile Number", style: TextStyle(color: Colors.black, fontSize: 15,),),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter OTP",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: FlatButton(
                              child: Text("Verify OTP", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PageOtp()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: FlatButton(
                              child: Text("Resend OTP", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PageOtp2()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
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
                              MaterialPageRoute(builder: (context) => Pageprof()),
                            );
                          },
                          child: new Text("GET STARTED!"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
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


class PageOtp2 extends StatefulWidget {
  @override
  _PageOtp2 createState() => _PageOtp2();
}

class _PageOtp2 extends State<PageOtp2> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 10,
                        top: 10,
                        width: 180,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 200),
                          child: Center(
                            child: Text("OTP", style: TextStyle(color: Colors.black, fontSize: 40, fontFamily: 'RobotoMono',),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text("We resend OTP to your registered email/Mobile Number", style: TextStyle(color: Colors.black, fontSize: 15,),),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter OTP",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: FlatButton(
                              child: Text("Verify OTP", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PageOtp()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: FlatButton(
                              child: Text("Resend OTP", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Page2()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
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
                              MaterialPageRoute(builder: (context) => Pageprof()),
                            );
                          },
                          child: new Text("GET STARTED!"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
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

