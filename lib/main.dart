import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
              child: Text('waixiong.github.io\nWILL BE EDIT\n\n' + MediaQuery.of(context).size.toString(), style: TextStyle(color: Colors.white70, fontFamily: 'RobotoMono'), textAlign: TextAlign.center,),
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
