import 'package:flutter/material.dart';

class RemotePage extends StatefulWidget {
  @override
  _RemotePageState createState() => _RemotePageState();
}

class _RemotePageState extends State<RemotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Text("Remote Setting"),
      ),
    ));
  }
}
