import 'package:flutter/material.dart';
import 'package:mybook/model/books.dart';
import 'package:mybook/view/card_eachitem.dart';

int index = 0;
final int index1 = Bookinfo.books.indexWhere((book) => book.id == 2);
final int index2 = Bookinfo.books.indexWhere((book) => book.id == 3);
final int index3 = Bookinfo.books.indexWhere((book) => book.id == 4);

class Cardwidget extends StatelessWidget {
  const Cardwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Items(books: Bookinfo.books[index1]),
          Items(books: Bookinfo.books[index2]),
          Items(books: Bookinfo.books[index3]),
        ],
      ),
    );
  }
}
