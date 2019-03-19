import 'package:fluthub/widgets/app_bar_title.dart';
import 'package:fluthub/widgets/home_page.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GithubApi _githubApi = GithubApi(client: Client());
  // This widget is the root of your application.
  var _githubColor = Color(0xff24292e);
  var _appBarTextStyle =
      TextStyle(color: Colors.white, letterSpacing: 0.5, fontSize: 24);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primaryColor: _githubColor,
            primaryTextTheme: TextTheme(
                title: _appBarTextStyle, body1: TextStyle(color: _githubColor)),
            pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            })),
        home: Scaffold(
          appBar: AppBar(
              title: AppBarTitle(),
              centerTitle: true,
              backgroundColor: _githubColor),
          body: HomePage(_githubApi),
        ));
  }
}
