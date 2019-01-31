import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_mindfullness/adapt.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Adapt.init(context);
//    SystemChrome.setEnabledSystemUIOverlays([]);
//    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));

//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
//      statusBarColor: Color(0xFFE9DFDD), //or set color with: Color(0xFF0000FF)
//    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE9DFDD),
        title: Text('又见'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE9DFDD),
              Color(0xFFC18C84),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: new EdgeInsets.only(top: Adapt.px(60)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: Adapt.px(154),
                    height: Adapt.px(180),
                    margin: new EdgeInsets.only(left: Adapt.px(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            "images/head@3x.png",
                            width: Adapt.px(92),
                            height: Adapt.px(92),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'JUL',
                                  style: TextStyle(fontSize: Adapt.px(26), color: Colors.white),
                                ),
                                Text(
                                  '2018',
                                  style: TextStyle(fontSize: Adapt.px(26), color: Colors.white),
                                ),
                              ],
                            ),
                            Text(
                              '26',
                              style: TextStyle(fontSize: Adapt.px(72), color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: Adapt.px(486),
                    height: Adapt.px(176),
                    margin: new EdgeInsets.only(right: Adapt.px(40)),
                    decoration: BoxDecoration(
                      border: new Border.all(width: Adapt.onePx(), color: Colors.white),
                      borderRadius: new BorderRadius.all(new Radius.circular(Adapt.px(20))),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: Adapt.px(446),
                          height: Adapt.px(64),
                          margin: new EdgeInsets.only(top: Adapt.px(30)),
                          child: Text(
                            '那些感受大地之美的人，能从中获得生命的力量，直至一生。',
                            style: TextStyle(
                              fontSize: Adapt.px(26),
                              color: Colors.white,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                            width: Adapt.px(446),
                            height: Adapt.px(44),
                            margin: new EdgeInsets.only(bottom: Adapt.px(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: Adapt.px(40),
                                  height: Adapt.px(2),
                                  color: Colors.white54,
                                ),
                                Text(
                                  ' 蕾切尔·卡逊',
                                  style: TextStyle(
                                    fontSize: Adapt.px(26),
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
                margin: new EdgeInsets.only(top: Adapt.px(60)),
                width: Adapt.px(616),
                height: Adapt.px(616),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(Adapt.px(20))),
                        child: Center(
                          child: CachedNetworkImage(
                            imageUrl: 'https://res-mindfullness-vigour-wechat.deepbaysz.com/images/album/anxiety%403x.png',
                            fit: BoxFit.cover,
                            placeholder: CircularProgressIndicator(),
                            errorWidget: Icon(Icons.error),
                          ),
                        )),
                    InkWell(
                        child: Image.asset(
                          "images/play@3x.png",
                          width: Adapt.px(240),
                          height: Adapt.px(240),
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          _neverSatisfied();
                        }),
                  ],
                )),

            Container(
              margin: new EdgeInsets.only(top: Adapt.px(70)),
              width: Adapt.px(670),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: new EdgeInsets.only(bottom: Adapt.px(10)),
                        child: Text(
                          '焦虑管理',
                          style: TextStyle(
                            fontSize: Adapt.px(36),
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        '第1节 海浪',
                        style: TextStyle(
                          fontSize: Adapt.px(32),
                          color: Color.fromRGBO(255, 255, 255, 0.67),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: new EdgeInsets.only(bottom: Adapt.px(20)),
                            child: Image.asset(
                              "images/more@3x.png",
                              width: Adapt.px(76),
                              height: Adapt.px(76),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            '全部课程',
                            style: TextStyle(
                              fontSize: Adapt.px(26),
                              color: Color.fromRGBO(255, 255, 255, 0.75),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Container(
                        margin: new EdgeInsets.only(left: Adapt.px(64)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: new EdgeInsets.only(bottom: Adapt.px(20)),
                              child: Image.asset(
                                "images/collections@3x.png",
                                width: Adapt.px(76),
                                height: Adapt.px(76),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              '我的收藏',
                              style: TextStyle(
                                fontSize: Adapt.px(26),
                                color: Color.fromRGBO(255, 255, 255, 0.75),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'AlertDialog Title',
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                fontSize: Adapt.px(26),
//                color: Colors.black,
//              ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You tap the play button.'),
//                Text('You\’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
