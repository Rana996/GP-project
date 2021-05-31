import 'package:flutter/material.dart';

class EngQuize extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new EngQuizeState();
  }
}

class EngQuizeState extends State<EngQuize> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset('images/arrow.png'),
            ),
            backgroundColor: Colors.teal[300],
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              "Quize",
              style: TextStyle(fontFamily: 'Comic'),
            ),
          ),
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),

                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        "Score: ",
                        style: new TextStyle(fontSize: 22.0),
                      )
                    ],
                  ),
                ),

                //image
                new Padding(padding: EdgeInsets.all(10.0)),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text(
                  "A",
                  style: new TextStyle(
                    fontSize: 100.0,
                  ),
                ),

                new Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.record_voice_over),
            onPressed: () {
              setState(() {});
            },
          ),
        ));
  }
}
