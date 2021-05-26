import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'co_widget.dart';

class CoVideo extends StatefulWidget {
  final String headerText;
  final String videopath;
  @override
  _CoVideoState createState() => _CoVideoState();

  CoVideo({Key key, this.videopath, this.headerText}) : super(key: key);
}

class _CoVideoState extends State<CoVideo> {
  VideoPlayerController controller;
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videopath)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose;
  }

  Widget build(BuildContext context) {
    final isMuted = controller.value.volume == 0;
    return Scaffold(
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
            (widget.headerText),
            style: TextStyle(fontFamily: 'Comic'),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/videoback.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 225,
              left: 25,
              right: 30,
              bottom: 35,
              child: VideoPlayerWidget(controller: controller),
            )
          ],
        ));
    // VideoPlayerWidget(controller: controller);
  }
}
