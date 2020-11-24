import 'package:flutter/material.dart';
import 'package:flutter_app/FadeAnimation.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/search.dart';

class Pageprof extends StatefulWidget {
  @override
  _Pageprof createState() => _Pageprof();
}

class _Pageprof extends State<Pageprof> {
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
                        left: 100,
                        top: 10,
                        width: 180,
                        height: 100,
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
                          margin: EdgeInsets.only(top: 90),
                          child: Center(
                            child: Text("Please fill your below details to complete registration", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), fontSize: 15,),),
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
                              padding: const EdgeInsets.only(left: 10.0,),
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
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "First Name",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Last Name",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email Id",
                                    hintStyle: TextStyle(color: Colors.black)
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Mobile number",
                                    hintStyle: TextStyle(color: Colors.black)
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Age",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    width: 100,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Gender",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 150,
                                    top: 10,
                                    width: 150,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Date of Birth",
                                            suffixIcon: Icon(Icons.calendar_today, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: FadeAnimation(1.6, Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Center(
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    width: 100,
                                    height: 100,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "State",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 180,
                                    top: 10,
                                    width: 150,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Pin Code",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: FadeAnimation(1.6, Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Center(
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Residential Address",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 170,
                        height: 50,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          textColor: Colors.white,
                          color: Color.fromRGBO(254, 2, 2, 0.8),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Pageprof2()),
                            );
                          },
                          child: new Text("Submit"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}


class Pageprof2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 310,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 10,
                        bottom: 150,
                        width: 150,
                        height: 200,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        top: 0,
                        width: 420,
                        height: 350,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/red.jpg')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 180,
                        width: 100,
                        height: 150,
                        child: FadeAnimation(1.5, FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          child: Text("LogOut", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline,fontSize: 20),),
                        )),
                      ),
                      Positioned(
                        right: 80,
                        bottom: 180,
                        width: 100,
                        height: 150,
                        child: FadeAnimation(1.5, FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Search()),
                            );
                          },
                          child: Text("Home", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline,fontSize: 20),),
                        )),
                      ),
                      Positioned(
                        right: 80,
                        bottom: 80,
                        width: 330,
                        height: 150,
                        child: FadeAnimation(1.5, FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          child: Text("“ We help you find vehicle that suits you “", style: TextStyle(color: Colors.white, fontSize: 20),),
                        )),
                      ),
                      Positioned(
                        top: 120,
                        left: 150,
                        width: 100,
                        height: 230,
                        child: FadeAnimation(1.6, Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/avatar.png')
                            )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 290),
                          child: Center(
                            child: Text("USERNAME", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 10,
                            top: 40,
                            width: 180,
                            height: 150,
                            child: FadeAnimation(1.5, Container(
                              child: Text("Residential Address", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8),fontSize: 20),),
                            )),
                          ),
                          Positioned(
                            child: FadeAnimation(1.6, Container(
                              margin: EdgeInsets.only(top: 100),
                              child: Padding(
                                padding: EdgeInsets.only(top: 80,right: 30,left: 30),
                                child: Column(
                                  children: <Widget>[
                                    FadeAnimation(1.8, Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),

                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.only(right: 115),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(width: 1.0, color: Colors.black),
                                                left: BorderSide(width: 1.0, color: Colors.black),
                                                right: BorderSide(width: 1.0, color: Colors.black),
                                                bottom: BorderSide(width: 1.0, color: Colors.black),
                                              ),
                                            ),
                                            child: FlatButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => Pageprof3()),
                                                );
                                              },
                                              child: Text("Personal Information", style: TextStyle(color: Colors.black, fontSize: 20),),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(right: 55,),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(width: 1.0, color: Colors.black),
                                                left: BorderSide(width: 1.0, color: Colors.black),
                                                right: BorderSide(width: 1.0, color: Colors.black),
                                                bottom: BorderSide(width: 1.0, color: Colors.black),
                                              ),
                                            ),
                                            child: FlatButton(
                                              onPressed: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => Pageprof4()),
                                                );
                                              },
                                              child: Text("Personal Reports of recommendation", style: TextStyle(color: Colors.black, fontSize: 15),),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(right: 73,),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(width: 1.0, color: Colors.black),
                                                left: BorderSide(width: 1.0, color: Colors.black),
                                                right: BorderSide(width: 1.0, color: Colors.black),
                                                bottom: BorderSide(width: 1.0, color: Colors.black),
                                              ),
                                            ),
                                            child: FlatButton(
                                              onPressed: (){},
                                              child: Text("Educational Qualifications", style: TextStyle(color: Colors.black, fontSize: 20),),
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            )),
                          ),
                          SizedBox(height: 130,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}


class Pageprof3 extends StatefulWidget {
  @override
  _Pageprof3 createState() => _Pageprof3();
}

class _Pageprof3 extends State<Pageprof3> {
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
                        left: 100,
                        top: 10,
                        width: 180,
                        height: 100,
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
                          margin: EdgeInsets.only(top: 90),
                          child: Center(
                            child: Text("Please fill your below details to complete registration", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), fontSize: 15,),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
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
                              padding: const EdgeInsets.only(left: 10.0,),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                    hintText: "Username",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                    hintText: "First Name",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                    hintText: "Last Name",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email Id",
                                    hintStyle: TextStyle(color: Colors.black)
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Mobile number",
                                    hintStyle: TextStyle(color: Colors.black)
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                    hintText: "Age",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    width: 100,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                            hintText: "Gender",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 180,
                                    top: 10,
                                    width: 150,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 5.0,right: 0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            suffixIcon: Icon(Icons.calendar_today, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                            hintText: "Date of Birth",
                                            hintStyle: TextStyle(color: Colors.grey[400], fontSize: 15)
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: FadeAnimation(1.6, Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Center(
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    width: 100,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                            hintText: "State",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 200,
                                    top: 10,
                                    width: 150,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0,right: 30),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                            hintText: "Pin Code",
                                            hintStyle: TextStyle(color: Colors.grey[400], fontSize: 15)
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: FadeAnimation(1.6, Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Center(
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Residential Address",
                                    suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(254, 2, 2, 0.8),),
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: 170,
                        height: 50,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          textColor: Colors.white,
                          color: Color.fromRGBO(254, 2, 2, 0.8),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Pageprof2()),
                            );
                          },
                          child: new Text("Update"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}


class Pageprof4 extends StatefulWidget {
  @override
  _Pageprof4 createState() => _Pageprof4();
}

class _Pageprof4 extends State<Pageprof4> {
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
                        height: 100,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 270,
                        top: 10,
                        width: 180,
                        height: 100,
                        child: FlatButton(
                          child: Text("Logout", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 90),
                          child: Center(
                            child: Text("Personal Reports of recommendation", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 1.0), fontSize: 20,),),
                          ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:150.0,left: 20, right: 20),
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
                                    padding: const EdgeInsets.only(left: 10.0,),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Date:",
                                          hintStyle: TextStyle(color: Colors.black)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          left: 10,
                                          top: 10,
                                          width: 100,
                                          height: 30,
                                          child: Container(
                                            padding: const EdgeInsets.only(left: 0.0),
                                            decoration: BoxDecoration(
                                                border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                            ),
                                            child: RaisedButton(
                                              textColor: Colors.white,
                                              color: Color.fromRGBO(254, 2, 2, 0.8),
                                              onPressed: (){
                                              },
                                              child: new Text("Download"),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 120,
                                          top: 10,
                                          width: 80,
                                          height: 30,
                                          child: Container(
                                            padding: const EdgeInsets.only(left: 5.0,right: 0),
                                            decoration: BoxDecoration(
                                                border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                            ),
                                            child: RaisedButton(
                                              textColor: Color.fromRGBO(254, 2, 2, 0.8),
                                              color: Colors.white,
                                              onPressed: (){
                                              },
                                              child: new Text("Mail"),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          child: FadeAnimation(1.6, Container(
                                            margin: EdgeInsets.only(top: 60),
                                            child: Center(
                                            ),
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
