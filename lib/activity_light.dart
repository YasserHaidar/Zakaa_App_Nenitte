import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Light extends StatelessWidget {
  Light({Key key, @required this.choice}) : super(key: key);

  final String choice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Light and its Colors"),
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
                          ? 'Fill out this crosswords puzzle'
                          : choice == "NI"
                          ? 'Use 4 from the colors of the light to describe a view from nature of your choice.'
                          : choice == "KI"
                          ? 'Look around yourself and identify 10 different colors, you have to state if it is a light color or not.'
                          : choice == "SI"
                          ? 'Color the wheel of Newton on a paper and see how the colors will merge into white.'
                          : "",
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    )),
                Divider(height: 5,),
                choice=="LI"?Center(
                  child: Image.asset("assets/puzzle.png",width: 250,height: 250,),
                ):Container(height: 0,),

                SizedBox(height:1,),

                choice=="LI"?Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        Text('Across',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),textAlign: TextAlign.center,),
                        Text('Down',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),textAlign: TextAlign.center,),

                      ]),
                      TableRow(children: [
                        Text('2. One Color of Light'),
                        Text('1. The number of colors the light has'),

                      ]),
                      TableRow(children: [
                        Text('4. Appears when light is refracted'),
                        Text('3. Help us to identify lights’ colors'),

                      ]),TableRow(children: [
                        Text('6. Has seven colors'),
                        Text('5. Can also help in distinguishing the colors of light'),

                      ]),

                    ],
                  ),
                ):Container(height: 0,)
              ],
            )));
  }
}
