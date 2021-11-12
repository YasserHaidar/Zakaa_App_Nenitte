import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Animals extends StatelessWidget {
  Animals({Key key, @required this.choice}) : super(key: key);

  final String choice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animals Food Chain"),
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
                      ? 'Record a video tape about you explaining the food diet of animal of your choice.'
                      : choice == "NI"
                          ? 'During a hike observe some animals and imagine what they can eat from the place they live in.'
                          : choice == "KI"
                              ? 'Choose an animal that lives in a forest, search about his food diet and play its role to capture the food and eat, i.e.: pretend that you are a lion and you are chasing a gazelle to eat, what are the steps you will do with them.'
                              : choice == "SI"
                                  ? 'Collect images of animals from magazines in your house and form a food chain from them.'
                                  : "",
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                )),
          ],
        )));
  }
}
