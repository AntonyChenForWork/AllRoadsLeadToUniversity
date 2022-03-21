import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'Uhome.dart';
import 'Thome.dart';
import 'profile.dart';

class SchoolData{
  String name;
  String num;
  String area;
  String address;

  SchoolData({this.name, this.num, this.area, this.address});

  factory SchoolData.fromJson(Map<String, dynamic> json){
    return SchoolData(
      name: json['name'] as String,
      num: json['num'] as String,
      area: json['area'] as String,
      address: json['address'] as String,
    );
  }
}

List<SchoolData> parseSchoolData(String responseBody){
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<SchoolData>((json) => SchoolData.fromJson(json)).toList();
}

Future<List<SchoolData>> getSchoolData(http.Client client) async{
  final response = await client.get('https://script.google.com/macros/s/AKfycbxuIa8QGe7jGWzPQRPeIvJJWnrrEKLb7Do1VwQ5kc6JUFh7-GsiwWUDRZK05n6Rocun/exec');

  if(response.statusCode == 200){
    return compute(parseSchoolData, response.body);
  }
  else{
    throw Exception('Failed to load item data');
  }
}

class Uschool extends StatefulWidget {

  @override
  UschoolState createState() => UschoolState();
}

class UschoolState extends State<Uschool>{
  int _currentIndex = 0;

  final _pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  final primary = Color(0xff696b9e);
  final secondary = Color(0xfff29a94);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: FutureBuilder(
        future: getSchoolData(http.Client()),
        builder: (context, snap){
          if(!snap.hasData){
            //print('hi');
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "校名查詢",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 250,),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(secondary),
                      strokeWidth: 6.0,
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text('Loading...', style: TextStyle(fontSize: 25, color: primary, fontWeight: FontWeight.bold),),
                ],
              ),
            );
          }
          //print('ho');
          List<SchoolData> schoolDatas = snap.data;
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 125, bottom: 70),
                    //height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: _listView(context, schoolDatas),
                  ),
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "校名查詢",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.school),
            label: '大學',
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.directions_subway),
            label: '交通',
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            label: '個人',
          )
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => _pages[index],
          transitionDuration: Duration(seconds: 0),
        ),
      );
    });
  }

  Widget _listView(BuildContext context, List<SchoolData> schooldatas){
    return ListView.builder(
      itemCount: schooldatas.length,
      itemBuilder: (context, index){
        return FlatButton(
          onPressed: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => WebUschool(index: index, schoolName: schooldatas[index].name,),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            width: double.infinity,
            height: 110,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: secondary),
                    image: DecorationImage(
                      image: ExactAssetImage('images/university.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        schooldatas[index].name,
                        style: TextStyle(
                          color: primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: secondary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            schooldatas[index].address,
                            style: TextStyle(
                              color: primary,
                              fontSize: 14.0,
                              letterSpacing: .3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: secondary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            schooldatas[index].num,
                            style: TextStyle(
                              color: primary,
                              fontSize: 14,
                              letterSpacing: .3,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class WebUschool extends StatefulWidget{
  final int index;
  final String schoolName;
  WebUschool({this.index, this.schoolName});

  WebUschoolState createState() => WebUschoolState();
}

class WebUschoolState extends State<WebUschool>{
  List<String> schoolCode = ["001", "002", "003", "004", "005", "006", "007", "008", "009", "011",
    "012", "013", "014", "015", "016", "017", "018", "019", "020", "021",
    "022", "023", "025", "026", "027", "028", "030", "031", "032", "033",
    "034", "035", "036", "038", "039", "040", "041", "042", "043", "044",
    "045", "046", "047", "050", "051", "056", "058", "059", "060",
    "063", "065", "079", "099", "100", "101", "108", "109", "110", "111",
    "112", "113", "130", "133", "134", "150", "151", "152", "153", "154"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(47, 75, 110, 1),
        title: Text(widget.schoolName),
      ),
      body: WebView(
        initialUrl: 'https://university-tw.ldkrsi.men/caac/${schoolCode[widget.index]}/#gsc.tab=0',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}