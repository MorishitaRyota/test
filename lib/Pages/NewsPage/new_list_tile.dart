import 'package:flutter/material.dart';

Widget newsListTile(article, BuildContext context) {
  return Container(
    margin: EdgeInsets.fromLTRB(2.0, 20.0, 2.0, 20.0),
    padding: EdgeInsets.all(0.0),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 1.0,
              blurRadius: 10.0,
              offset: Offset(10, 10)),
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: article.urlToImage != null
                    ? NetworkImage(article.urlToImage)
                    : NetworkImage('https://via.placeholder.com/200'),
                //NetworkImage('https://via.placeholder.com/200'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            article.source.name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
          padding: EdgeInsets.all(6.0),
          child: Text(
            article.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        )
      ],
    ),
  );
}
