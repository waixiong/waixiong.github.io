import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Positioned.fill(
            child: Image.asset('images/background.jpg', fit: BoxFit.cover,),
          ),
          Container(
            color: Colors.black54,
            child: Center(
              child: Text('waixiong.github.io\nWILL BE EDIT\n\n' + MediaQuery.of(context).size.toString(), style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
            ),
          ),
          new Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: AppBar(
              title: Text('WAI XIONG', style: TextStyle(color: Colors.white70),),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
