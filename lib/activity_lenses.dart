import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class Lenses extends StatelessWidget {
  Lenses({Key key, @required this.choice}) : super(key: key);

  final String choice;
  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Refraction and Lenses"),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              height: 20,
            ),
            Text(
              choice,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Divider(
              height: 30,
            ),
            choice == "LI"
                ? Linkify(
                    onOpen: _onOpen,
                    style: new TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.right,
                    text: 'https://youtu.be/JZDe9DCx7Wk',
                  )
                : choice == "KI"
                    ? Linkify(
                        onOpen: _onOpen,
                        style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.right,
                        text: 'https://youtu.be/nHCKRGBxlf8',
                      )
                    : Container(
                        height: 0,
                      ),
            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  choice == "LI"
                      ? 'Watch the video above aiming to answer the following questions: \n\n  1- Who was the Arab scientist who invented the lenses long time ago? \n\n  2-In what does this discovery help us now?'
                      : choice == "NI"
                          ? 'Use a magnifying glass and try to observe the small insects next to your house.'
                          : choice == "KI"
                              ? 'Bring a sphere with a globe of water and apply the experience in this video at your house:'
                              : choice == "SI"
                                  ? 'When it rains we see the rainbow in the sky, take a photo of a rainbow and explain to your parents why it appears. '
                                  : "",
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                )),
          ],
        )));
  }
}
