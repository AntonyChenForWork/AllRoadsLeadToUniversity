import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'Uhome.dart';
import 'Thome.dart';
import 'STtrain.dart';
import 'profile.dart';
import 'package:intl/intl.dart';

class Ttrain extends StatefulWidget {
  @override
  TtrainState createState() => TtrainState();
}

enum Areas {
  Taipei,
  Taoyuan,
  Xinchu,
  Miaoli,
  Taichung,
  Zhanghua,
  Nantou,
  Yunlin,
  Chiayi,
  Tainan,
  Kaohsiung,
  Pindong,
  Yilang,
  Hwalien,
  Taidong,
  PS,
  NL,
  Gigi,
  Shalung
}
enum TP {
  Fulong,
  Gongliao,
  Shuangxi,
  Mudan,
  Sandiaoling,
  Houtong,
  Ruifang,
  Sijiaoting,
  Nuannuan,
  Keelung,
  Sankeng,
  Badu,
  Qidu,
  Baifu,
  Wudu,
  Xizhi,
  Xike,
  Nangang,
  Songshan,
  Taipei,
  Wanhua,
  Banqiao,
  Fuzhou,
  Shulin,
  SouthShulin,
  Shanjia,
  Yingge
}
enum TY { Taoyuan, Neili, Zhongli, Puxin, Yangmei, Fugang, Xinfu }
enum XC {
  Beihu,
  Hukou,
  Xinfeng,
  Zhubei,
  NorthHsinchu,
  Hsinchu,
  Sanxingqiao,
  Xiangshan
}
enum ML {
  Qiding,
  Zhunan,
  Tanwen,
  Dashan,
  Houlong,
  Longgang,
  Baishatun,
  Xinpu,
  Tongxiao,
  Yuanli,
  Zaoqiao,
  Fengfu,
  Miaoli,
  Nanshi,
  Tongluo,
  Sanyi
}
enum TC {
  Rinan,
  Dajia,
  TaichungPort,
  Qingshui,
  Shalu,
  Longjing,
  Dadu,
  Zhuifen,
  Taian,
  Houli,
  Fengyuan,
  Lilin,
  Tanzi,
  Toujiacuo,
  Songzhu,
  Taiyuan,
  Jingwu,
  Taichung,
  Wuquan,
  Daqing,
  Wuri,
  Xinwuri,
  Chenggong
}
enum ZH {
  Changhua,
  Huatan,
  Dacun,
  Yuanlin,
  Yongjing,
  Shetou,
  Tianzhong,
  Ershui
}
enum NT { Yuanquan, Zhuoshui, Longquan, Jiji, Shuili, Checheng }
enum YLN { Linnei, Shiliu, Douliu, Dounan, Shigui }
enum CY { Dalin, Minxiong, Jiabei, Chiayi, Shuishang, Nanjing }
enum TN {
  Houbi,
  Xinying,
  Liuying,
  Linfengying,
  Longtian,
  Balin,
  Shanhua,
  Nanke,
  Xinshi,
  Yongkang,
  Daqiao,
  Tainan,
  Baoan,
  Rende,
  Zhongzhou,
  ChangJungChristianUniversity,
  Shalun
}
enum KS {
  Dahu,
  Luzhu,
  Gangshan,
  Qiaotou,
  Nanzi,
  Xinzuoying,
  Zuoying,
  Neiwei,
  MuseumofFineArts,
  Gushan,
  Sankuaicuo,
  Kaohsiung,
  Minzu,
  ScienceAndTechnologyMuseum,
  Zhengyi,
  Fengshan,
  Houzhuang,
  Jiuqutang
}
enum PD {
  Liukuaicuo,
  Pingtung,
  Guilai,
  Linluo,
  Xishi,
  Zhutian,
  Chaozhou,
  Kanding,
  Nanzhou,
  Zhenan,
  Linbian,
  Jiadong,
  Donghai,
  Fangliao,
  Jialu,
  Neishi,
  Fangshan
}
enum YLG {
  Hanben,
  Wuta,
  Nanao,
  Dongao,
  Yongle,
  Suao,
  Suaoxin,
  Xinma,
  Dongshan,
  Luodong,
  Zhongli,
  Erjie,
  Yilan,
  Sicheng,
  Jiaoxi,
  Dingpu,
  Toucheng,
  Waiao,
  Guishan,
  Daxi,
  Dali,
  Shicheng
}
enum HL {
  Fuli,
  Dongzhu,
  Dongli,
  Yuli,
  Sanmin,
  Ruisui,
  Fuyuan,
  Dafu,
  Guangfu,
  Wanrong,
  Fenglin,
  Nanping,
  LinrongShinKong,
  Fengtian,
  Shoufeng,
  Pinghe,
  Zhixue,
  Jian,
  Hualien,
  Beipu,
  Jingmei,
  Xincheng,
  Chongde,
  Heren,
  Heping
}
enum TD {
  Dawu,
  Longxi,
  Jinlun,
  Taimali,
  Zhiben,
  Kangle,
  Taitung,
  Shanli,
  Luye,
  Ruiyuan,
  Ruihe,
  Guanshan,
  Haiduan,
  Chishang
}
enum EPS {
  Ruifang,
  Houtong,
  Sandiaoling,
  Jingtong,
  Pingxi,
  Lingjiao,
  Wanggu,
  Shifen,
  Dahua,
  Haikeguan,
  Badouzi
}
enum ENL {
  Hsinchu,
  NorthHsinchu,
  Qianjia,
  Xinzhuang,
  Zhuzhong,
  Liujia,
  Shangyuan,
  Ronghua,
  Zhudong,
  Hengshan,
  Jiuzantou,
  Hexing,
  Fugui,
  Neiwan
}
enum GG { Ershui, Yuanquan, Zhuoshui, Longquan, Jiji, Shuili, Checheng }
enum SL { Zhongzhou, ChangJungChristianUniversity, Shalun }
const double Fontsize = 17.5;
const double Padding = 20.0;

/*class Search{
  String Sdate = '2020 - 06 - 17';
  String Stime = '12 : 20 : 20';
  bool isDeparture = true;
  String DStation = '??????';
  String AStation = '??????';

  Search({this.Sdate, this.Stime, this.isDeparture, this.DStation, this.AStation});
}*/

class TtrainState extends State<Ttrain> {
  String DStationText = '???????????????';
  String AStationText = '???????????????';

  //TP------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TPDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Fulong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Gongliao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shuangxi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Mudan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sandiaoling);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Houtong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Ruifang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sijiaoting);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Nuannuan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Keelung);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sankeng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Badu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Qidu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Baifu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Wudu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Xizhi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Xike);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Nangang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Songshan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Taipei);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Wanhua);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Banqiao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Fuzhou);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shulin);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.SouthShulin);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shanjia);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Yingge);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TPAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Fulong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Gongliao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shuangxi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Mudan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sandiaoling);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Houtong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Ruifang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sijiaoting);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Nuannuan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Keelung);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sankeng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Badu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Qidu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Baifu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Wudu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Xizhi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Xike);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Nangang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Songshan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Taipei);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Wanhua);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Banqiao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Fuzhou);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shulin);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.SouthShulin);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shanjia);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Yingge);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //TY------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TYDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Taoyuan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Neili);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Zhongli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Puxin);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Yangmei);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Fugang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Xinfu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TYAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Taoyuan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Neili);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Zhongli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Puxin);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Yangmei);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Fugang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Xinfu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //XC---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> XCDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Beihu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Hukou);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Xinfeng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Zhubei);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.NorthHsinchu);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Hsinchu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Sanxingqiao);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Xiangshan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> XCAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Beihu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Hukou);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Xinfeng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Zhubei);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.NorthHsinchu);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Hsinchu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Sanxingqiao);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Xiangshan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //ML---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> MLDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Qiding);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Zhunan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tanwen);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Dashan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Houlong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Longgang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Baishatun);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Xinpu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tongxiao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Yuanli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Zaoqiao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Fengfu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Miaoli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Nanshi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tongluo);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Sanyi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> MLAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Qiding);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Zhunan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tanwen);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Dashan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Houlong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Longgang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Baishatun);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Xinpu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tongxiao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Yuanli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Zaoqiao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Fengfu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Miaoli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Nanshi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tongluo);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Sanyi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //TC---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TCDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Rinan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Dajia);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.TaichungPort);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Qingshui);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Shalu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Longjing);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Dadu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Zhuifen);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taian);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Houli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Fengyuan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Lilin);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Tanzi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Toujiacuo);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Songzhu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taiyuan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Jingwu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taichung);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Wuquan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Daqing);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Wuri);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Xinwuri);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Chenggong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TCAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Rinan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Dajia);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.TaichungPort);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Qingshui);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Shalu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Longjing);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Dadu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Zhuifen);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taian);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Houli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Fengyuan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Lilin);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Tanzi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Toujiacuo);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Songzhu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taiyuan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Jingwu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taichung);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Wuquan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Daqing);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Wuri);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Xinwuri);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Chenggong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //ZH---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> ZHDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Changhua);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Huatan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Dacun);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Yuanlin);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Yongjing);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Shetou);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Tianzhong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Ershui);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> ZHAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Changhua);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Huatan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Dacun);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Yuanlin);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Yongjing);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Shetou);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Tianzhong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Ershui);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //NT---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> NTDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Yuanquan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Zhuoshui);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Longquan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Jiji);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Shuili);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Checheng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> NTAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Yuanquan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Zhuoshui);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Longquan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Jiji);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Shuili);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Checheng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //YLN---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> YLNDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Linnei);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Shiliu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Douliu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Dounan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Shigui);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> YLNAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Linnei);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Shiliu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Douliu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Dounan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Shigui);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //CY---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> CYDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Dalin);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Minxiong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Jiabei);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Chiayi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Shuishang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Nanjing);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> CYAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Dalin);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Minxiong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Jiabei);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Chiayi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Shuishang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Nanjing);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //TN---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TNDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Houbi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Xinying);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Liuying);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Linfengying);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Longtian);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Balin);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Shanhua);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Nanke);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Xinshi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Yongkang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Daqiao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Tainan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Baoan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Rende);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Zhongzhou);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.ChangJungChristianUniversity);
                  setState(() {
                    DStationText = "????????????";
                  });
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Shalun);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TNAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Houbi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Xinying);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Liuying);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Linfengying);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Longtian);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Balin);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Shanhua);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Nanke);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Xinshi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Yongkang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Daqiao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Tainan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Baoan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Rende);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Zhongzhou);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.ChangJungChristianUniversity);
                  setState(() {
                    AStationText = "????????????";
                  });
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Shalun);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //KS---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> KSDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Dahu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Luzhu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Gangshan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Qiaotou);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Nanzi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Xinzuoying);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Zuoying);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Neiwei);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.MuseumofFineArts);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Gushan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Sankuaicuo);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Kaohsiung);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Minzu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.ScienceAndTechnologyMuseum);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Zhengyi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Fengshan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Houzhuang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Jiuqutang);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> KSAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Dahu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Luzhu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Gangshan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Qiaotou);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Nanzi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Xinzuoying);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Zuoying);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Neiwei);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.MuseumofFineArts);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Gushan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Sankuaicuo);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Kaohsiung);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Minzu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.ScienceAndTechnologyMuseum);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Zhengyi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Fengshan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Houzhuang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Jiuqutang);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //PD---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> PDDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Liukuaicuo);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Pingtung);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Guilai);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Linluo);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Xishi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Zhutian);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Chaozhou);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Kanding);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Nanzhou);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Zhenan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Linbian);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Jiadong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Donghai);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Fangliao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Jialu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Neishi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Fangshan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> PDAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Liukuaicuo);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Pingtung);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Guilai);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Linluo);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Xishi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Zhutian);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Chaozhou);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Kanding);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Nanzhou);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Zhenan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Linbian);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Jiadong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Donghai);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Fangliao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Jialu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Neishi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Fangshan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //YLG---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> YLGDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Hanben);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Wuta);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Nanao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dongao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Yongle);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Suao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Suaoxin);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Xinma);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dongshan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Luodong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Zhongli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Erjie);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Yilan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Shicheng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Jiaoxi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dingpu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Toucheng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Waiao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Guishan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Daxi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dali);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Shicheng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> YLGAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Hanben);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Wuta);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Nanao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dongao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Yongle);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Suao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Suaoxin);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Xinma);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dongshan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Luodong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Zhongli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Erjie);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Yilan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Shicheng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Jiaoxi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dingpu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Toucheng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Waiao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Guishan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Daxi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dali);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Shicheng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //HL---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> HLDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fuli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dongzhu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dongli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Yuli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Sanmin);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Ruisui);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fuyuan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dafu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Guangfu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Wanrong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fenglin);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Nanping);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.LinrongShinKong);
                  setState(() {
                    DStationText = "????????????";
                  });
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fengtian);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Shoufeng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Pinghe);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Zhixue);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Jian);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Hualien);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Beipu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Jingmei);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Xincheng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Chongde);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Heren);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Heping);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> HLAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fuli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dongzhu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dongli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Yuli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Sanmin);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Ruisui);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fuyuan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dafu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Guangfu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Wanrong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fenglin);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Nanping);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.LinrongShinKong);
                  setState(() {
                    AStationText = "????????????";
                  });
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fengtian);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Shoufeng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Pinghe);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Zhixue);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Jian);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Hualien);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Beipu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Jingmei);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Xincheng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Chongde);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Heren);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Heping);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //TD---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TDDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Dawu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Longxi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Jinlun);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Taimali);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Zhiben);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Kangle);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Taitung);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Shanli);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Luye);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Ruiyuan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Ruihe);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Guanshan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Haiduan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Chishang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TDAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Dawu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Longxi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Jinlun);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Taimali);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Zhiben);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Kangle);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Taitung);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Shanli);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Luye);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Ruiyuan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Ruihe);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Guanshan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Haiduan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Chishang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //PS---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> PSDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Ruifang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Houtong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Sandiaoling);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Jingtong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Pingxi);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Lingjiao);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Wanggu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Shifen);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Dahua);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Haikeguan);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Badouzi);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> PSAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Ruifang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Houtong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Sandiaoling);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Jingtong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Pingxi);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Lingjiao);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Wanggu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Shifen);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Dahua);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Haikeguan);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Badouzi);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //NL---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> NLDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hsinchu);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.NorthHsinchu);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Qianjia);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Xinzhuang);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Zhuzhong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Liujia);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Shangyuan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Ronghua);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Zhudong);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hengshan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Jiuzantou);
                  setState(() {
                    DStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hexing);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Fugui);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Neiwan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> NLAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hsinchu);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.NorthHsinchu);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Qianjia);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Xinzhuang);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Zhuzhong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Liujia);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Shangyuan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Ronghua);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Zhudong);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hengshan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Jiuzantou);
                  setState(() {
                    AStationText = "?????????";
                  });
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hexing);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Fugui);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Neiwan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //GG---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> GGDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Ershui);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Yuanquan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Zhuoshui);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Longquan);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Jiji);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Shuili);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Checheng);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> GGAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Ershui);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Yuanquan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Zhuoshui);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Longquan);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Jiji);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Shuili);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Checheng);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //SL---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> SLDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.Zhongzhou);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.ChangJungChristianUniversity);
                  setState(() {
                    DStationText = "????????????";
                  });
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.Shalun);
                  setState(() {
                    DStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> SLAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.Zhongzhou);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.ChangJungChristianUniversity);
                  setState(() {
                    AStationText = "????????????";
                  });
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.Shalun);
                  setState(() {
                    AStationText = "??????";
                  });
                },
                child: const Text(
                  "??????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //DA---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> DOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taipei);
                  TPDOpenDialog();
                },
                child: const Text(
                  "???????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taoyuan);
                  TYDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Xinchu);
                  XCDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Miaoli);
                  MLDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taichung);
                  TCDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Zhanghua);
                  ZHDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Nantou);
                  NTDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Yunlin);
                  YLNDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Chiayi);
                  CYDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Tainan);
                  TNDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Kaohsiung);
                  KSDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Pindong);
                  PDDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Yilang);
                  YLGDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Hwalien);
                  HLDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taidong);
                  TDDOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  PSDOpenDialog();
                },
                child: const Text(
                  "??????/?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.NL);
                  NLDOpenDialog();
                },
                child: const Text(
                  "??????/?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Gigi);
                  GGDOpenDialog();
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Shalung);
                  SLDOpenDialog();
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> AOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("???????????????"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taipei);
                  TPAOpenDialog();
                },
                child: const Text(
                  "???????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taoyuan);
                  TYAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Xinchu);
                  XCAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Miaoli);
                  MLAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taichung);
                  TCAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Zhanghua);
                  ZHAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Nantou);
                  NTAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Yunlin);
                  YLNAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Chiayi);
                  CYAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Tainan);
                  TNAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Kaohsiung);
                  KSAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Pindong);
                  PDAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Yilang);
                  YLGAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Hwalien);
                  HLAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taidong);
                  TDAOpenDialog();
                },
                child: const Text(
                  "????????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.PS);
                  PSAOpenDialog();
                },
                child: const Text(
                  "??????/?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.NL);
                  NLAOpenDialog();
                },
                child: const Text(
                  "??????/?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Gigi);
                  GGAOpenDialog();
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Shalung);
                  SLAOpenDialog();
                },
                child: const Text(
                  "?????????",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //---------------------------------------------------------------------------------------------------------------------------------------------------------------

  int _currentIndex = 1;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage()
  ];

  @override
  void initState() {
    super.initState();
  }

  String date1 = "Not set";
  String DateTo = '';

  //Search input;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 62, 255, 1),
        title: Text('??????'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.school),
            title: new Text('??????'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.directions_subway),
            title: new Text('??????'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('??????'),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 75),
              Column(children: <Widget>[
                Text(
                  '????????????',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  elevation: 4.0,
                  onPressed: () {
                    DatePicker.showDatePicker(context,
                        theme: DatePickerTheme(
                          containerHeight: 210.0,
                        ),
                        showTitleActions: true,
                        minTime: DateTime(DateTime.now().year,
                            DateTime.now().month, DateTime.now().day),
                        maxTime: DateTime(
                            DateTime.now().year,
                            DateTime.now().month + 1,
                            DateTime.now().day), onConfirm: (date) {
                      date1 = '${date.year} - ${date.month} - ${date.day}';
                      setState(() {
                        DateTime now = DateTime.now();
                        DateTo = DateFormat('yyyy-MM-dd').format(now);
                      });
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 65.0,
                    width: 200.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.date_range,
                                size: 18.0,
                                color: Color.fromRGBO(191, 62, 255, 1),
                              ),
                              Text(
                                " $date1",
                                style: TextStyle(
                                    color: Color.fromRGBO(191, 62, 255, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ]),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '????????????',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                          onPressed: () {
                            DOpenDialog();
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 5, right: 5, top: 10, bottom: 10),
                            child: Text(
                              DStationText,
                              style: TextStyle(fontSize: 25),
                            ),
                          ))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '????????????',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                          onPressed: () {
                            AOpenDialog();
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 5, right: 5, top: 10, bottom: 10),
                            child: Text(
                              AStationText,
                              style: TextStyle(fontSize: 25),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 60, right: 60, top: 15),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  elevation: 4.0,
                  onPressed: () {
                    _sendData(context);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 55.0,
                      child: Container(
                        child: Text(
                          '??????',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                  color: Color.fromRGBO(191, 62, 255, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => _Pages[index],
          transitionDuration: Duration(seconds: 0),
        ),
      );
    });
  }

  void _sendData(BuildContext context) {
    String Sdate = DateTo;
    String DStation = DStationText;
    String AStation = AStationText;

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => STtrain(
              Sdate: Sdate,
              DStation: DStation,
              AStation: AStation,
            )));
  }
}
