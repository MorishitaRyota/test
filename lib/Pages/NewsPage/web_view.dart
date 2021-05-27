import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  ArticleWebView({@required this.article});

  final article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Expanded(
          child: Text(
            article.title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
      ),
      body: WebView(
        initialUrl: article.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
