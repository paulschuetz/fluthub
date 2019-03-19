import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(FontAwesomeIcons.github, color: Colors.white, size: 24),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Text("Fluthub", style: Theme.of(context).primaryTextTheme.title)
        ]);
  }
}
