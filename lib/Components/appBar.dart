import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

// ignore: camel_case_types
class appBar extends StatefulWidget {
  const appBar({Key? key}) : super(key: key);

  @override
  _appBarState createState() => _appBarState();
}

// ignore: camel_case_types
class _appBarState extends State<appBar> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperOne(),
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width,
        color: Colors.red[700],
        child: SafeArea(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 25),
                child: Text(
                  "Todo Reminder",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
