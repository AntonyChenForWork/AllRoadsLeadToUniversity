import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'Uhome.dart';
import 'Thome.dart';
import 'profile.dart';

class Uarea extends StatefulWidget {

  @override
  UareaState createState() => UareaState();
}

class UareaState extends State<Uarea>{
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 125, bottom: 70),
                width: double.infinity,
                child: _listView(context),
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
                        "地區查詢",
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

  Widget _listView(BuildContext context){
    final _areas = ['基隆市', '台北市', '新北市', '桃園市', '新竹市', '苗栗縣', '台中市', '彰化縣市',
      '南投縣', '嘉義縣市', '台南市', '高雄市', '屏東市', '宜蘭縣市', '花蓮縣市', '台東市', '金門縣'];

    return ListView.builder(
      itemCount: _areas.length,
      itemBuilder: (context, index){
        return FlatButton(
          onPressed: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => SUarea(index: index, areaName: _areas[index],),
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
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 5,),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: secondary,
                ),
                SizedBox(width: 10,),
                Text(
                  _areas[index],
                  style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
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

//SUarea----------------------------------------------------------------------------------------------------------------------------------------------------------------

class AreaAndData{
  String responseBody;
  String area;

  AreaAndData(this.responseBody, this.area);
}

List<SchoolData> parseSchoolData(AreaAndData data){
  final parsed = jsonDecode(data.responseBody).cast<Map<String, dynamic>>();
  List<SchoolData> nowData = parsed.map<SchoolData>((json) => SchoolData.fromJson(json)).toList();
  List<SchoolData> areaData = new List<SchoolData>();

  for(var i in nowData){
    print(i.name + " " + i.num + " " + i.area + " " + i.address);
    if(i.area == data.area){
      print(i.name + "is the same area");
      areaData.add(i);
    }
  }

  return areaData;
}

Future<List<SchoolData>> getSchoolData(http.Client client, String area) async{
  final response = await client.get('https://script.google.com/macros/s/AKfycbxuIa8QGe7jGWzPQRPeIvJJWnrrEKLb7Do1VwQ5kc6JUFh7-GsiwWUDRZK05n6Rocun/exec');

  if(response.statusCode == 200){
    print("response received");
    return compute(parseSchoolData, AreaAndData(response.body, area));
  }
  else{
    throw Exception('Failed to load item data');
  }
}

class SUarea extends StatefulWidget{
  final int index;
  final String areaName;
  SUarea({this.index, this.areaName});

  SUareaState createState() => SUareaState();
}

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

class SUareaState extends State<SUarea>{
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
      body: FutureBuilder(
        future: getSchoolData(http.Client(), widget.areaName),
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
                            widget.areaName,
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
          else{
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
                              widget.areaName,
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
          }
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
                pageBuilder: (context, animation1, animation2) => WebUarea(schoolCode: schooldatas[index].num, areaName: widget.areaName, schoolName: schooldatas[index].name,),
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

//WebUarea-------------------------------------------------------------------------------------------------------------------------------------------------------------------


class WebUarea extends StatefulWidget{
  final String schoolCode;
  final String areaName;
  final String schoolName;
  WebUarea({this.schoolCode, this.areaName, this.schoolName});

  WebUareaState createState() => WebUareaState();
}

class WebUareaState extends State<WebUarea>{

  final areaSchoolCode = {
    '基隆市':['021'],
    '台北市':['001', '002', '005', '006', '013', '014', '017', '019', '025', '028', '032', '035', '046', '047', '050', '099', '109', '112'],
    '新北市':['002', '014', '020', '044', '056', '079', '099', '152'],
    '桃園市':['008', '016', '030', '039', '046)', '040', '110'],
    '新竹市':['011', '013', '043', '065'],
    '苗栗縣':['151'],
    '台中市':['003', '009', '012', '015', '018', '026', '031', '060', '134'],
    '彰化縣市':['023', '042', '133'],
    '南投縣':['058'],
    '嘉義縣市':['041', '059', '100'],
    '台南市':['004', '033', '051', '063', '079', '111', '112', '113'],
    '高雄市':['007', '022', '027', '045', '050', '101'],
    '屏東市':['036'],
    '宜蘭縣市':['014', '130', '150'],
    '花蓮縣市':['034', '108'],
    '台東市':['038'],
    '金門縣':['046', '153'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(47, 75, 110, 1),
        title: Text(widget.schoolName),
      ),
      body: WebView(
        initialUrl: 'https://university-tw.ldkrsi.men/caac/${widget.schoolCode}/#gsc.tab=0',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}












