import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Mogu App',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'App tester'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  void _airDress () {

  }

  void _restitchDress () {

  }

  void _repairDress () {
    
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new AppBar(
                title: new Text(widget.title),
                leading: new IconButton(
                tooltip: 'Previous choice',
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () { _nextPage(-1); },
                ),
                actions: <Widget>[
                  new IconButton(
                    icon: new Icon(Icons.playlist_play),
                    tooltip: 'Air it',
                    onPressed: _airDress,
                  ),
                  new IconButton(
                    icon: new Icon(Icons.playlist_add),
                    tooltip: 'Restitch it',
                    onPressed: _restitchDress,
                  ),
                  new IconButton(
                    icon: new Icon(Icons.playlist_add_check),
                    tooltip: 'Repair it',
                    onPressed: _repairDress,
                  ),
                ],
              ),
              new Text(
                _active ? 'Active' : 'Inactive',
                style: new TextStyle(fontSize: 32.0, color: Colors.white),
              ),
            ],
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
    // return new Scaffold(
    //   appBar: new AppBar(
    //     title: new Text(widget.title),
    //   ),
    //   body: 
    //   // new Center(
    //     // child: 
    //     new Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: <Widget>[
    //         new Text(
    //           'Presiona el boton para nose la debede papuh:',
    //         ),
    //         new Container (
    //           padding: new EdgeInsets.all(0,0),
    //           icon: new Icon(Iocns.star),
    //           onPressed: _startPressTo
    //         )
    //       ],
    //     ),
    //   // )
    // );
  }
}
