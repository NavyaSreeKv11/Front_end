import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FadeAnimation.dart';
import 'package:flutter_app/userprof.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



List<String> reportList = [
  "Not relevant",
  "Illegal",
  "Spam",
  "Offensive",
  "Uncivil"
];


class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  String dropdownValue = '1';
  String dropValue = 'Gender';
  double _currentSliderValue = 5;
  RangeValues _currentRangeValues = const RangeValues(20, 60);
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
                        left: 20,
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
                        right: 70,
                        bottom: 0,
                        width: 100,
                        height: 150,
                        child: FadeAnimation(1.5, FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Pageprof2()),
                            );
                          },
                          child: Text("Clear", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline,fontSize: 20),),
                        )),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
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
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 90, left: 15),
                          child: Center(
                            child: Text("Please provide your interests for Recommendation from below aspects", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), fontSize: 15,),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.blueGrey, height: 10.0,),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    top: 30,
                                    width: 180,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text("Number Of Plans", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                  Positioned(
                                    left: 250,
                                    top: 10,
                                    width: 70,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                      ),
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        icon: Icon(Icons.arrow_downward),
                                        iconSize: 24,
                                        elevation: 16,
                                        style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8)),
                                        underline: Container(
                                          height: 1,
                                          color: Colors.red,
                                        ),
                                        onChanged: (String newValue) {
                                          setState(() {
                                            dropdownValue = newValue;
                                          });
                                        },
                                        items: <String>['1', '2', '3','4','5','6','7','8','9','10','11','12','13','14','15']
                                            .map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
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
                      Container(
                        padding: const EdgeInsets.only(right: 190.0, bottom: 10.0,top: 20.0),
                        child: Text("Geography Location", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Urban'),
                                  FilterChipWidget(chipName: 'Semi-Urban'),
                                  FilterChipWidget(chipName: 'Semi-rural'),
                                  FilterChipWidget(chipName: 'Cement-road'),
                                  FilterChipWidget(chipName: 'Mud roads'),
                                  FilterChipWidget(chipName: 'Tar roads'),
                                  FilterChipWidget(chipName: 'Semi-rock road'),
                                  FilterChipWidget(chipName: 'Others'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 220.0, bottom: 10.0,top: 20.0),
                        child: Text("Budget(In lakhs)", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: RangeSlider(
                          values: _currentRangeValues,
                          min: 0,
                          max: 300,
                          divisions: 20,
                          activeColor: Color.fromRGBO(254, 2, 2, 0.8),
                          inactiveColor: Colors.black,
                          labels: RangeLabels(
                            _currentRangeValues.start.round().toString(),
                            _currentRangeValues.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _currentRangeValues = values;
                            });
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 310.0, bottom: 10.0,top: 20.0),
                        child: Text("Usage", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Personal'),
                                  FilterChipWidget(chipName: 'Shared taxi'),
                                  FilterChipWidget(chipName: 'Shared ride'),
                                  FilterChipWidget(chipName: 'Commercial with road'),
                                  FilterChipWidget(chipName: 'Business purposes'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 230.0, bottom: 10.0,top: 20.0),
                        child: Text("Daily Utilization", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: '0-30KM'),
                                  FilterChipWidget(chipName: '30-50KM'),
                                  FilterChipWidget(chipName: '50-100KM'),
                                  FilterChipWidget(chipName: '100-200KM'),
                                  FilterChipWidget(chipName: '200-500KM'),
                                  FilterChipWidget(chipName: '500-1000KM'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 295.0, bottom: 10.0,top: 20.0),
                        child: Text("Mileage", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: Slider(
                          value: _currentSliderValue,
                          min: 0,
                          max: 100,
                          divisions: 20,
                          activeColor: Color.fromRGBO(254, 2, 2, 0.8),
                          inactiveColor: Colors.black,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 210,
                                    top: 30,
                                    width: 180,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text("Owner Age", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                  Positioned(
                                    left: 200,
                                    top: 10,
                                    width: 70,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                      ),
                                      child: TextField(
                                        inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Age",
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
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    top: 30,
                                    width: 180,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text("Gender", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                  Positioned(
                                    left: 200,
                                    top: 10,
                                    width: 120,
                                    height: 50,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10.0, right: 30.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                      ),
                                      child: DropdownButton<String>(
                                        value: dropValue,
                                        onChanged: (String newValue) {
                                          setState(() {
                                            dropValue = newValue;
                                          });
                                        },
                                        items: <String>['Gender', 'Male', 'Female']
                                          .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          })
                                          .toList(),
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
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 185.0, bottom: 10.0,top: 20.0),
                        child: Text("Preferred Body Style", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                runSpacing: 3.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'SUV'),
                                  FilterChipWidget(chipName: 'Hatchback'),
                                  FilterChipWidget(chipName: 'Crossover'),
                                  FilterChipWidget(chipName: 'Qudricycle'),
                                  FilterChipWidget(chipName: 'Sedan'),
                                  FilterChipWidget(chipName: 'Coupe'),
                                  FilterChipWidget(chipName: 'Convertible'),
                                  FilterChipWidget(chipName: 'MUV'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 280.0, bottom: 10.0,top: 20.0),
                        child: Text("Fuel Type", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Any'),
                                  FilterChipWidget(chipName: 'Petrol'),
                                  FilterChipWidget(chipName: 'Diesel'),
                                  FilterChipWidget(chipName: 'Electric'),
                                  FilterChipWidget(chipName: 'Hybrid'),
                                  FilterChipWidget(chipName: 'CNG'),

                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 290.0, bottom: 10.0,top: 20.0),
                        child: Text("Steering", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Manual'),
                                  FilterChipWidget(chipName: 'Power'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 280.0, bottom: 10.0,top: 20.0),
                        child: Text("Driven By", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Personal'),
                                  FilterChipWidget(chipName: 'Male'),
                                  FilterChipWidget(chipName: 'Female'),
                                  FilterChipWidget(chipName: 'Driver'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 270.0, bottom: 10.0,top: 20.0),
                        child: Text("Seat Width", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Normal(45cm)'),
                                  FilterChipWidget(chipName: 'Medium(50cm)'),
                                  FilterChipWidget(chipName: 'Large(60cm)'),
                                  FilterChipWidget(chipName: 'ExtraLarge(70cm & above)'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 200.0, bottom: 10.0,top: 20.0),
                        child: Text("Seat to Roof height", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: '15 inches'),
                                  FilterChipWidget(chipName: '17 inches'),
                                  FilterChipWidget(chipName: '20 inches'),
                                  FilterChipWidget(chipName: '21 inches'),
                                  FilterChipWidget(chipName: '23 inches'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 210.0, bottom: 10.0,top: 20.0),
                        child: Text("Passenger Height", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: '5.2ft'),
                                  FilterChipWidget(chipName: '5.4ft'),
                                  FilterChipWidget(chipName: '5.5ft'),
                                  FilterChipWidget(chipName: '5.6ft'),
                                  FilterChipWidget(chipName: '5.7ft'),
                                  FilterChipWidget(chipName: '5.8ft'),
                                  FilterChipWidget(chipName: '5.9ft'),
                                  FilterChipWidget(chipName: '6.0ft & above'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 250.0, bottom: 10.0,top: 20.0),
                        child: Text("Key Features", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Keyless Entry'),
                                  FilterChipWidget(chipName: 'Airbags'),
                                  FilterChipWidget(chipName: 'ABS'),
                                  FilterChipWidget(chipName: 'Bluetooth'),
                                  FilterChipWidget(chipName: 'Parking sensors'),
                                  FilterChipWidget(chipName: 'Rear View Camera'),
                                  FilterChipWidget(chipName: 'Sunroof'),
                                  FilterChipWidget(chipName: 'Climate Control'),
                                  FilterChipWidget(chipName: 'Cruise Control'),
                                  FilterChipWidget(chipName: 'Moonroof'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 250.0, bottom: 10.0,top: 20.0),
                        child: Text("Transmission", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Manual'),
                                  FilterChipWidget(chipName: 'Automatic'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 215.0, bottom: 10.0,top: 20.0),
                        child: Text("Seating Capacity", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                runSpacing: 3.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: '5'),
                                  FilterChipWidget(chipName: '6'),
                                  FilterChipWidget(chipName: '7'),
                                  FilterChipWidget(chipName: '8'),
                                  FilterChipWidget(chipName: '9'),
                                  FilterChipWidget(chipName: '10'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 220.0, bottom: 10.0,top: 20.0),
                        child: Text("Usage Behaviour", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 3.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Home to office'),
                                  FilterChipWidget(chipName: 'City travel'),
                                  FilterChipWidget(chipName: 'Taxi'),
                                  FilterChipWidget(chipName: 'Intra City'),
                                  FilterChipWidget(chipName: 'Business Travel'),
                                  FilterChipWidget(chipName: 'Long Distance Travel'),
                                  FilterChipWidget(chipName: 'Shared'),
                                  FilterChipWidget(chipName: 'Only Family Travel'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 200.0, bottom: 20.0,top: 20.0),
                        child: Text("Additional Features", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Keyless Entry'),
                                  FilterChipWidget(chipName: 'Airbags'),
                                  FilterChipWidget(chipName: 'ABS'),
                                  FilterChipWidget(chipName: 'Bluetooth'),
                                  FilterChipWidget(chipName: 'Parking sensors'),
                                  FilterChipWidget(chipName: 'Rear View Camera'),
                                  FilterChipWidget(chipName: 'Sunroof'),
                                  FilterChipWidget(chipName: 'Climate Control'),
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 190.0, bottom: 10.0,top: 20.0),
                        child: Text("Personal Preference", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Align
                          (
                          alignment: Alignment.centerLeft,
                          child: Container(
                              child: Wrap(
                                spacing: 5.0,
                                children: <Widget>[
                                  FilterChipWidget(chipName: 'Any'),
                                  FilterChipWidget(chipName: 'Good dealer network presence'),
                                  FilterChipWidget(chipName: 'Value for money'),
                                  FilterChipWidget(chipName: 'Good resale value'),
                                  FilterChipWidget(chipName: 'Cheaper spare parts available'),
                                ],
                              )
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
                              MaterialPageRoute(builder: (context) => FilterChipDisplay()),
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

class FilterChipDisplay extends StatefulWidget {
  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

class _FilterChipDisplayState extends State<FilterChipDisplay> {

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
                        left: 200,
                        top: 10,
                        width: 180,
                        height: 100,
                        child: FlatButton(
                          child: Text("Filters", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                        ),
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
                          margin: EdgeInsets.only(top: 10),
                          child: Center(
                          ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:150.0,left: 20, right: 20,bottom: 20),
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
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                width: 200,
                                                height: 200,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage('assets/images/car.jpg')
                                                      )
                                                  ),
                                                )
                                              ),
                                              Positioned(
                                                top: 110,
                                                right: 20,
                                                width: 120,
                                                height: 40,
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
                                                  child: new Text("Click to view!"),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      side: BorderSide(color: Colors.red)
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                child: FadeAnimation(1.6, Container(
                                                  margin: EdgeInsets.only(top: 160),
                                                  child: Center(
                                                  ),
                                                )),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 20.0),
                                          child: Text("Kia Sorento", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 0.0),
                                          child: Text("Nayagaadi Rating : 4.0", style: TextStyle(color: Colors.black, fontSize: 15),),
                                        ),
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
                      Padding(
                        padding: EdgeInsets.only(top:150.0,left: 20, right: 20,bottom: 20),
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
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  width: 200,
                                                  height: 200,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage('assets/images/car.jpg')
                                                        )
                                                    ),
                                                  )
                                              ),
                                              Positioned(
                                                top: 110,
                                                right: 20,
                                                width: 120,
                                                height: 40,
                                                child: RaisedButton(
                                                  padding: const EdgeInsets.all(8.0),
                                                  textColor: Colors.white,
                                                  color: Color.fromRGBO(254, 2, 2, 0.8),
                                                  onPressed: (){
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => FilterChipView()),
                                                    );
                                                  },
                                                  child: new Text("Click to view!"),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      side: BorderSide(color: Colors.red)
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                child: FadeAnimation(1.6, Container(
                                                  margin: EdgeInsets.only(top: 160),
                                                  child: Center(
                                                  ),
                                                )),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 20.0),
                                          child: Text("Kia Sorento", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 0.0),
                                          child: Text("Nayagaadi Rating : 4.0", style: TextStyle(color: Colors.black, fontSize: 15),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            SizedBox(height: 10,),
                          Container(
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
                                  padding: EdgeInsets.all(0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                width: 200,
                                                height: 200,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage('assets/images/car.jpg')
                                                      )
                                                  ),
                                                )
                                            ),
                                            Positioned(
                                              top: 110,
                                              right: 20,
                                              width: 120,
                                              height: 40,
                                              child: RaisedButton(
                                                padding: const EdgeInsets.all(8.0),
                                                textColor: Colors.white,
                                                color: Color.fromRGBO(254, 2, 2, 0.8),
                                                onPressed: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => FilterChipView()),
                                                  );
                                                },
                                                child: new Text("Click to view!"),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10.0),
                                                    side: BorderSide(color: Colors.red)
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: FadeAnimation(1.6, Container(
                                                margin: EdgeInsets.only(top: 160),
                                                child: Center(
                                                ),
                                              )),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 20.0),
                                        child: Text("Kia Sorento", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 0.0),
                                        child: Text("Nayagaadi Rating : 4.0", style: TextStyle(color: Colors.black, fontSize: 15),),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                            SizedBox(height: 30,),
                            SizedBox(
                              width: 470,
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
                                child: new Text("Send personal recommendation report as pdf"),
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
              ],
            ),
          ),
        )
    );
  }
}


class FilterChipView extends StatefulWidget {
  @override
  _FilterChipViewState createState() => _FilterChipViewState();
}

class _FilterChipViewState extends State<FilterChipView> {

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
                        left: 200,
                        top: 10,
                        width: 180,
                        height: 100,
                        child: FlatButton(
                          child: Text("Filters", style: TextStyle(color: Color.fromRGBO(254, 2, 2, 0.8), decoration: TextDecoration.underline, fontSize: 17, ),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                        ),
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
                          margin: EdgeInsets.only(top: 10),
                          child: Center(
                          ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:150.0,left: 20, right: 20,bottom: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
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
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  width: 200,
                                                  height: 200,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage('assets/images/car.jpg')
                                                        )
                                                    ),
                                                  )
                                              ),
                                              Positioned(
                                                top: 110,
                                                right: 20,
                                                width: 120,
                                                height: 40,
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
                                                  child: new Text("Click to view!"),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      side: BorderSide(color: Colors.red)
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                child: FadeAnimation(1.6, Container(
                                                  margin: EdgeInsets.only(top: 160),
                                                  child: Center(
                                                  ),
                                                )),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 20.0),
                                          child: Text("Kia Sorento", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 0.0),
                                          child: Text("Nayagaadi Rating : 4.0", style: TextStyle(color: Colors.black, fontSize: 15),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:150.0,left: 20, right: 20,bottom: 20),
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
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                padding: const EdgeInsets.only(left: 10.0, bottom: 10.0,top: 20.0),
                                                child: Text("Kia Sorento", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                              ),
                                              Positioned(
                                                  left: 40,
                                                  top: 20,
                                                  width: 280,
                                                  height: 230,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage('assets/images/car.jpg')
                                                        )
                                                    ),
                                                  )
                                              ),
                                              Positioned(
                                                child: FadeAnimation(1.6, Container(
                                                  margin: EdgeInsets.only(top: 260),
                                                  child: Center(
                                                  ),
                                                )),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 0.0),
                                          child: Text("Nayagaadi Rating : 4.0", style: TextStyle(color: Colors.black, fontSize: 15),),
                                        ),
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  left: 10,
                                                  top: 0,
                                                  width: 165,
                                                  height: 60,
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
                                                    child: new Text("Interested for vehicle loans", textAlign: TextAlign.center,),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                        side: BorderSide(color: Colors.red)
                                                    ),
                                                  ),
                                              ),
                                              Positioned(
                                                right: 10,
                                                top: 0,
                                                width: 165,
                                                height: 60,
                                                child: RaisedButton(
                                                  padding: const EdgeInsets.all(8.0),
                                                  textColor: Color.fromRGBO(254, 2, 2, 0.8),
                                                  color: Colors.white,
                                                  onPressed: (){
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => Pageprof2()),
                                                    );
                                                  },
                                                  child: new Text("Interested for Test Drive", textAlign: TextAlign.center,),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      side: BorderSide(color: Colors.red)
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                child: FadeAnimation(1.6, Container(
                                                  margin: EdgeInsets.only(top: 70),
                                                  child: Center(
                                                  ),
                                                )),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 0.0),
                                          child: Text("Nayagaadi Rating", style: TextStyle(color: Colors.black, fontSize: 15),),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 25.0, bottom: 10.0,top: 0.0),
                                          child: RatingBar(
                                            initialRating: 4,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                            },
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(right: 85.0, bottom: 10.0,top: 0.0),
                                          child: Text("Please provide your valiable review...", style: TextStyle(color: Colors.black, fontSize: 15),),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(left: 10.0, right: 10,bottom: 100),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            border: Border.all(),
                                          ),
                                          child: TextField(
                                            inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Comment Here...",
                                                hintStyle: TextStyle(color: Colors.red)
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            SizedBox(height: 10,),
                            SizedBox(
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
              ],
            ),
          ),
        )
    );
  }
}


class FilterChipWidget extends StatefulWidget {
  final String chipName;

  FilterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(color: Colors.black,fontSize: 16.0),
      selected: _isSelected,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),side: BorderSide(width: 1, color: Colors.grey,), ),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color.fromRGBO(254, 2, 2, 0.8),
    );
  }
}