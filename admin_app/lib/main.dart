import 'package:admin_app/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/1.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 150,
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
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("ADMIN", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
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
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(bottom: BorderSide(color: Colors.grey[100])),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10)
                                    )
                                  ]
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(bottom: BorderSide(color: Colors.grey[100])),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10)
                                    )
                                  ]
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
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
                              MaterialPageRoute(builder: (context) => Admin2()),
                            );
                          },
                          child: new Text("LOGIN"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
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


class Admin2 extends StatefulWidget {
  @override
  _Admin2 createState() => _Admin2();
}

class _Admin2 extends State<Admin2> {
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
                        left: 270,
                        top: 10,
                        width: 180,
                        height: 150,
                        child: FlatButton(
                          child: Text("Logout", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 150),
                          child: Center(
                            child: Text("Admin", style: TextStyle(color: Colors.black, fontSize: 30, ),),
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
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100])),
                                  boxShadow: [
                                    BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10)
                                  )
                                ]
                              ),
                              child: RaisedButton(
                                padding: const EdgeInsets.only(left: 42.0,right: 42.0,),
                                textColor: Colors.white,
                                color: Color.fromRGBO(254, 2, 2, 0.8),
                                onPressed: (){
                                },
                                child: new Text("Customer Profile Data"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100])),
                                  boxShadow: [
                                    BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10)
                                  )
                                ]
                              ),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Color.fromRGBO(254, 2, 2, 0.8),
                                onPressed: (){
                                },
                                child: new Text("Customer Loan Request Profile"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Color.fromRGBO(254, 2, 2, 0.8),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Admin3()),
                                  );
                                },
                                child: new Text("Add Data"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 300,
                        height: 220,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/car.png')
                              )
                          ),
                        )),
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


class Admin3 extends StatefulWidget {
  @override
  _Admin3 createState() => _Admin3();
}

class _Admin3 extends State<Admin3> {
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
                        left: 250,
                        top: 10,
                        width: 180,
                        height: 150,
                        child: FlatButton(
                          child: Text("Logout", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 150),
                          child: Center(
                            child: Text("Add Data", style: TextStyle(color: Colors.black, fontSize: 30, ),),
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
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Color.fromRGBO(254, 2, 2, 0.8),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Admin2()),
                                  );
                                },
                                child: new Text("+ Choose File(cvs/xls format..)"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
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
                              MaterialPageRoute(builder: (context) => Admin4()),
                            );
                          },
                          child: new Text("ADD"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                          ),
                        ),
                      ),
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
                              MaterialPageRoute(builder: (context) => Admin5()),
                            );
                          },
                          child: new Text("DISPLAY"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 220,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/car.png')
                              )
                          ),
                        )),
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

class Admin4 extends StatefulWidget {
  @override
  _Admin4 createState() => _Admin4();
}

class _Admin4 extends State<Admin4> {
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
                        left: 250,
                        top: 10,
                        width: 180,
                        height: 150,
                        child: FlatButton(
                          child: Text("Logout", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 250),
                          child: Center(
                            child: Text("Added Successfully!", style: TextStyle(color: Colors.black, fontSize: 30, ),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 80,),
                SizedBox(
                  width: 170,
                  height: 50,
                  child: FlatButton(
                    child: Text("BACK", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 20, ),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Admin3()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 170,
                  height: 50,
                  child: FlatButton(
                    child: Text("DISPLAY", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 20, ),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Admin5()),
                      );
                    },
                  ),
                ),

                SizedBox(
                  width: 300,
                  height: 220,
                  child: FadeAnimation(1.5, Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/car.png')
                        )
                    ),
                  )),
                ),
              ],
            ),
          ),
        )
    );
  }
}

class Admin5 extends StatefulWidget {
  @override
  _Admin5 createState() => _Admin5();
}

class _Admin5 extends State<Admin5> {
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
                        left: 250,
                        top: 10,
                        width: 180,
                        height: 150,
                        child: FlatButton(
                          child: Text("Logout", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 150),
                          child: Center(
                            child: Text("DISPLAY", style: TextStyle(color: Colors.black, fontSize: 30, ),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
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
                        MaterialPageRoute(builder: (context) => Admin3()),
                      );
                    },
                    child: new Text("ADD MORE!"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Color.fromRGBO(254, 2, 2, 0.8))
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

