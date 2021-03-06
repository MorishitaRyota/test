import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/NewsPage/news_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    //ProviderScope下でproviderの使用が可
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NewsPage());
  }
}
