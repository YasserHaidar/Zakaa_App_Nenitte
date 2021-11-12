import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Electrical extends StatelessWidget {
  Electrical({Key key, @required this.choice}) : super(key: key);

  final String choice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Electrical Circuits"),
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
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      choice == "LI"
                          ? 'Discuss with someone of your parents the difference between the lamps branched in your house and the lamps branches in a decorative lamps series. '
                          : choice == "NI"
                          ? 'Go on a hike in the nature (garden of your school, garden next to your house…) collect different objects and state if they are conductor or isolator. \n Write them here:'
                          : choice == "KI"
                          ? 'Using a modeling clay to construct a model for a circuit formed of a lam and a battery.'
                          : choice == "SI"
                          ? 'Take a photo of the circuit model you constructed and upload it here, share it also on your social media accounts with your friends stating that you are learning about the electrical circuits according to kinesthetic and spatial intelligences.'
                          : "",
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    )),
                choice=="NI"?TextField(minLines: 4,maxLines: 9,):choice=="SI"?IconButton(icon: Icon(Icons.upload_rounded),onPressed: null,):Divider(height: 20,),
              ],
            )));
  }
}
