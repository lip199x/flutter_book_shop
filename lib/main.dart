import 'package:flutter/material.dart';
import 'package:flutter_book_shop/screens/book_detail.dart';
import 'package:flutter_book_shop/screens/book_list.dart';

void main() {
  runApp(BookShopApp());
}

class BookShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber, accentColor: Colors.blue),
      home: BookList(),
      routes: {'/book-detail': (context) => BookDetail()},
    );
  }
}
