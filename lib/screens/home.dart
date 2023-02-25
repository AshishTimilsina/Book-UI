import 'package:flutter/material.dart';
import 'package:mybook/view/display_book.dart';
import 'package:mybook/view/tabbar_items.dart';
import '../constants/constant.dart';
import '../model/books.dart';
import 'package:mybook/view/last_card.dart';

class Homeapp extends StatelessWidget {
  const Homeapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hi Ashish,',
          textScaleFactor: 1.5,
          style: appbarText,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                  color: Colors.black,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.notifications,
                    color: Colors.black, size: 26.0),
              )),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/banner.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TabbarItems(
                text: 'All',
                ontap: () {},
              ),
              TabbarItems(
                text: 'Recommended',
                ontap: () {},
              ),
              TabbarItems(
                text: 'Popular',
                ontap: () {},
              ),
              TabbarItems(
                text: 'Fav',
                ontap: () {},
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Displaybook(book: Bookinfo.books[index]),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'You may also like',
                  style: youmayliketext,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Cardwidget(),
        ],
      ),
    );
  }
}
