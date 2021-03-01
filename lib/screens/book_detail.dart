import 'package:flutter/material.dart';
import 'package:flutter_book_shop/models/book.dart';

class BookDetail extends StatelessWidget {
  // final int bookId;
  // final String title;
  // final String thumbnailUrl;
  // final int price;

  // BookDetail(this.bookId, this.title, this.thumbnailUrl, this.price);

  static const routename = '/book-detail';

  @override
  Widget build(BuildContext context) {
    final book = ModalRoute.of(context).settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(book["title"]),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(book["thumbnailUrl"], fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
              "${book["price"]} Bath",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {},
              height: 45,
              textColor: Colors.white,
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Add to cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
