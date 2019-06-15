import 'dart:math';

import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

bool isLargeScreen(Size size){
  if(size.width < 800){
    return false;
  }
  return true;
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'waixiong.github.io',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool navOpen;
  String navTab;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navOpen = false;
    String navTab = 'Introduction';
  }

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    Size size = MediaQuery.of(context).size;
    Map<String, Map<String, Widget>> page2Widget = {
      'Introduction': {
        'Icon': Icon(Icons.info, color: Colors.white70),
        'Widget': null
      },
      'Education': {
        'Icon': Icon(Icons.library_books, color: Colors.white70),
        'Widget': null
      },
      'Skills & Experience': {
        'Icon': Icon(Icons.star, color: Colors.white70),
        'Widget': null
      },
      'Participation & Awards': {
        'Icon': Icon(Icons.tv, color: Colors.white70),
        'Widget': null
      },
      'Others': {
        'Icon': null,
        'Widget': null
      }
    };
    List<String> pageKey = page2Widget.keys.toList();
    
    Widget backgroud = new Positioned.fill( child: Image.asset('images/background.jpg', fit: BoxFit.cover,), );
    double navRight = 360;
    Widget content = new Positioned(
      top: 56,
      left: isLargeScreen(size)? navRight : 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: Colors.white70,
        height: size.height,
        width: size.width,
        child: Center(
          child: Text('waixiong.github.io\nWILL BE EDIT\n\n' + size.toString(), style: TextStyle(fontFamily: 'RobotoMono'), textAlign: TextAlign.center,),
        ),
      ),
    );
    Widget nav = new Positioned(
      top: 56,
      left: 0,
      right: navOpen? size.width - navRight : (isLargeScreen(size)? size.width - navRight : size.width),
      bottom: 0,
      child: Container(
        color: Colors.black45,
        child: Center(
          child: ListView.builder(
            itemCount: pageKey.length,
            itemBuilder: (BuildContext context, int index){
              return new ListTile(
                leading: page2Widget[pageKey[index]]['Icon'],
                onTap: () => setState((){
                  navTab = pageKey[index];
                  navOpen = false;
                  print(pageKey[index]);
                }),
                title: Text(pageKey[index], style: TextStyle(color: Colors.white70, fontFamily: 'RobotoMono')),
              );
            },
          ),
        ),
      ),
    );
    Widget appbar = new Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AppBar(
        title: Text('WAI XIONG', style: TextStyle(color: Colors.white70),),
        backgroundColor: Colors.black54,
        elevation: 0.0,
        leading: isLargeScreen(size)? null : IconButton(
          icon: Icon(Icons.view_list, color: Colors.white70,),
          onPressed: () => setState((){
            navOpen = !navOpen;
          }),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          backgroud,
          content,
          nav,
          appbar
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
