// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mybook/constants/constant.dart';
import 'package:mybook/model/books.dart';

class Items extends StatelessWidget {
  // const Items({Key? key}) : super(key: key);
  final Book books;

  const Items({super.key, required this.books});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        children: [
          Image(
            image: AssetImage(books.image),
            height: 150,
            width: 130,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            books.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            books.category,
            style: bookcategorytext,
          ),
        ],
      ),
    );
  }
}
