import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  Widget build(BuildContext context) {
    return Scaffold();
  }
}

WidgetText(String first, String second) {
  return Container(
    margin: EdgeInsets.only(right: 50, top: 50),
    transformAlignment: Alignment.topRight,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          first,
          style: TextStyle(
              color: Color.fromARGB(255, 64, 98, 225),
              fontSize: 54,
              fontWeight: FontWeight.bold),
        ),
        Text(
          second,
          style: TextStyle(
              color: Colors.white, fontSize: 54, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

widgetApp(Icon first, Icon second, Icon third) {
  return Center(
    child: Row(
      children: [
        ClipOval(
          child: IconButton(onPressed: () {}, icon: first),
        ),
        ClipOval(
          child: IconButton(onPressed: () {}, icon: second),
        ),
        ClipOval(
          child: IconButton(onPressed: () {}, icon: third),
        ),
      ],
    ),
  );
}
