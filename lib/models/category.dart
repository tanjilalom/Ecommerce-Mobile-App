class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: 'Shows', image: 'assets/images/shoes.jpg'),
  Category(title: 'Beauty', image: 'assets/images/beauty.png'),
  Category(title: 'PC', image: 'assets/images/pc.jpg'),
  Category(title: 'Mobile', image: 'assets/images/mobile.jpg'),
  Category(title: 'Watch', image: 'assets/images/watch.png'),
];
