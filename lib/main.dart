import 'package:flutter/material.dart';
import 'package:protobrain/global.dart';
import 'package:protobrain/views/main_page_view.dart';

void main() => Global.init().then((_) => runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Proto Brain',
      home: MainPageView(pageState: PageState.inbox,),
    );
  }
}
