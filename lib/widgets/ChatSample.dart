import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatefulWidget {
  const ChatSample({super.key});

  @override
  State<ChatSample> createState() => _ChatSampleState();
}

class _ChatSampleState extends State<ChatSample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: Container(
            child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.receive),
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  "Hi, Developer How Are You?",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: Padding(
            padding: EdgeInsets.only(right: 15),
            child: Container(
              child: ClipPath(
                clipper: UpperNipMessageClipperTwo(MessageType.send),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffe4fdca),
                  ),
                  child: Text(
                    "Hi, Programmer I so good Feel and so Happy Today ,thank for advice",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
