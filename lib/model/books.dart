class Bookinfo {
  static final List<Book> books = [
    Book(
        id: 1,
        image: 'assets/images/little_mermaid.png',
        title: "The Little Mermaid",
        desc:
            "'The Little Mermaid' is a fairy tail writtem by the Danish author by Hans Christian Henderson ",
        category: 'Fairy Tailes',
        rating: '⭐⭐⭐⭐'),
    Book(
        id: 2,
        image: 'assets/images/six_crows.png',
        title: "Six of Crows",
        desc: "",
        category: 'Classic',
        rating: '⭐⭐⭐⭐⭐'),
    Book(
        id: 3,
        image: 'assets/images/time_of_witches.png',
        title: "Time of Witches",
        desc: " ",
        category: 'Classic',
        rating: '⭐⭐⭐⭐'),
    Book(
        id: 4,
        image: 'assets/images/infinite_future.png',
        title: "Infinite Future ",
        desc: " ",
        category: 'Mystery',
        rating: '⭐⭐⭐'),
  ];
}

class Book {
  final int id;
  final String image;
  final String title;
  final String desc;
  final String category;
  final String rating;

  Book(
      {required this.id,
      required this.image,
      required this.title,
      required this.desc,
      required this.category,
      required this.rating});
}
