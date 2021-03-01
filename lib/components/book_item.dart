import 'package:flutter/material.dart';
import 'package:flutter_book_shop/screens/book_detail.dart';

class BookItem extends StatelessWidget {
  final int bookId;
  final String title;
  final String thumbnailUrl;
  final int price;

  BookItem(this.bookId, this.title, this.thumbnailUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) =>
          //         BookDetail(bookId, title, thumbnailUrl, price),
          //   ),
          // );
          Navigator.of(context).pushNamed('/book-detail', arguments: {
            "bookId": bookId,
            "title": title,
            "thumnailUrl": thumbnailUrl,
            "price": price
          });
        },
        child: GridTile(
            child: Image.network(thumbnailUrl, fit: BoxFit.cover),
            footer: GridTileBar(
              backgroundColor: Colors.black54,
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
                color: Colors.amber,
              ),
            )),
      ),
    );
  }
}
