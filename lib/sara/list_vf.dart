import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/co_vedio.dart';
import 'package:gp/sara/v_and_f.dart';
import 'package:gp/sara/vfQuiz.dart';

class ListVf extends StatelessWidget {
  static String id = "ListScreen";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Vegetables & Fruits"),
        backgroundColor: Colors.teal[300],
      ),
      body: ListView(padding: EdgeInsets.all(20.0), children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.teal[300],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal,
                        blurRadius: 10.0,
                      ),
                    ]),
                alignment: Alignment.centerRight,
                // color: Colors.tealAccent,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VegSlider()));
                  },
                  child: Image(
                    image: AssetImage("images/si.png"),
                    height: 150,
                    width: 200,
                  ),
                ))
          ],
        ),
        new Padding(
          padding: EdgeInsets.all(20.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.teal[300],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal,
                        blurRadius: 10.0,
                      ),
                    ]),
                //color: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoVideo(
                                videopath: 'assets/vfvideo.mp4',
                                headerText: "Vegtables&fruits")));
                  },
                  child: Image(
                    image: AssetImage("images/yi.png"),
                    height: 150,
                    width: 200,
                  ),
                ))
          ],
        ),
        new Padding(
          padding: EdgeInsets.all(20.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.teal[300],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal,
                        blurRadius: 10.0,
                      ),
                    ]),
                // color: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VfQuiz()));
                  },
                  child: Image(
                    image: AssetImage("images/ti.png"),
                    height: 150,
                    width: 200,
                  ),
                ))
          ],
        ),
      ]),
    );
  }
}
