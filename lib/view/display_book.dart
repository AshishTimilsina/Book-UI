import 'package:flutter/material.dart';
import 'package:mybook/constants/constant.dart';

import '../model/books.dart';

class Displaybook extends StatelessWidget {
  final Book book;

  const Displaybook({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(children: [
          Image(
            image: AssetImage(book.image),
            height: 150,
            width: 130,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                book.title,
                style: booktitletext,
              ),
              Text(
                book.desc,
                style: bookdesctext,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(book.rating),
                  const Spacer(),
                  Text(
                    book.category,
                    style: bookcategorytext,
                  ),
                ],
              )
            ],
          ))
        ]),
      ),
    );
  }
}
