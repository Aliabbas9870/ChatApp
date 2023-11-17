import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class messageP extends StatefulWidget {
  @override
  State<messageP> createState() => _messagePState();
}

class _messagePState extends State<messageP> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Bubble(
        alignment: Alignment.center,
        color: Color.fromRGBO(212, 234, 244, 1.0),
        child: Text('TODAY',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
      ),
      Bubble(
        margin: BubbleEdges.only(top: 10),
        radius: Radius.zero,
        alignment: Alignment.topRight,
        nipWidth: 8,
        nipHeight: 24,
        nip: BubbleNip.rightTop,
        color: Color.fromRGBO(225, 255, 199, 1.0),
        child: Text('Hello, Ali Abbas', textAlign: TextAlign.right),
      ),
      Bubble(
        margin: BubbleEdges.only(top: 10),
        radius: Radius.zero,
        alignment: Alignment.topLeft,
        nipWidth: 8,
        nipHeight: 24,
        nip: BubbleNip.leftTop,
        child: Text('Hi, developer!'),
      ),
       Bubble(
        margin: BubbleEdges.only(top: 10),
        radius: Radius.zero,
        alignment: Alignment.topLeft,
        nipWidth: 8,
        nipHeight: 24,
        nip: BubbleNip.leftTop,
        child: Text('Ali Abbas How Are You!'),
      ),
      Bubble(
        margin: BubbleEdges.only(top: 10),
        radius: Radius.elliptical(5.0, 10.0),
        alignment: Alignment.topRight,
        nipWidth: 33,
        nipHeight: 13,
        nip: BubbleNip.rightTop,
        color: Color.fromRGBO(225, 255, 199, 1.0),
        child: Text('Hello, Ali', textAlign: TextAlign.right),
      ),
       Bubble(
        margin: BubbleEdges.only(top: 10),
        radius: Radius.zero,
        alignment: Alignment.topLeft,
        nipWidth: 8,
        nipHeight: 27,
        nip: BubbleNip.leftTop,
        child: Text('Are You Flutter Developer ???'),
      ),
       Bubble(
        margin: BubbleEdges.only(top: 10),
        radius: Radius.zero,
        alignment: Alignment.topLeft,
        nipWidth: 9,
        nipHeight: 28,
        nip: BubbleNip.rightTop,
        child: Text('Hi, developer!'),
      ),
       Bubble(
        margin: BubbleEdges.only(top: 10),
        radius: Radius.zero,
        alignment: Alignment.topLeft,
        nipWidth: 8,
        nipHeight: 24,
        nip: BubbleNip.leftTop,
        child: Text('Yes!'),
      ),


    ]);
  }
}
