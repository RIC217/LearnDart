import 'package:flutter/material.dart';
import 'package:learn_dart_mobile_app/screens/guest/home.dart';
import 'package:learn_dart_mobile_app/screens/guest/tutorials/hello_world.dart';
import 'package:learn_dart_mobile_app/screens/guest/tutorials/intro.dart';

class ViewsManager extends StatefulWidget {
  const ViewsManager({super.key});

  @override
  State<ViewsManager> createState() => _ViewsManagerState();
}

class _ViewsManagerState extends State<ViewsManager> {
  List<Widget> widgets = [];
  int _index = 0;

  @override
  void initState() {
    super.initState();
    widgets.addAll(
      [
        Home(
          onChangedStep: (index) => setState(() => _index = index),
        ),
        IntroTuto(
          onChangedStep: (index) => setState(() => _index = index),
        ),
        HelloWorldTuto(
          onChangedStep: (index) => setState(() => _index = index),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widgets.elementAt(_index),
    );
  }
}
