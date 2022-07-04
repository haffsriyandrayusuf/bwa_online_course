class Articles {
  final String imageUrl;
  final String nameArticles;
  final String tags;
  bool favorite;

  Articles({
    required this.imageUrl,
    required this.nameArticles,
    required this.tags,
    required this.favorite,
  });
}

List<Articles> listArticles = [
  Articles(
    imageUrl: 'assets/images/articles1.png',
    nameArticles: 'How to: Work faster as Full Stack Designer',
    tags: 'UI Design',
    favorite: true,
  ),
  Articles(
    imageUrl: 'assets/images/articles2.png',
    nameArticles: 'How to: Digital Art from Sketch',
    tags: 'Art Course',
    favorite: false,
  ),
  Articles(
    imageUrl: 'assets/images/articles1.png',
    nameArticles: 'How to: Work faster as Full Stack Designer',
    tags: 'UI Design',
    favorite: false,
  ),
  Articles(
    imageUrl: 'assets/images/articles2.png',
    nameArticles: 'How to: Digital Art from Sketch',
    tags: 'Art Course',
    favorite: true,
  ),
  Articles(
    imageUrl: 'assets/images/articles1.png',
    nameArticles: 'How to: Work faster as Full Stack Designer',
    tags: 'UI Design',
    favorite: true,
  ),
  Articles(
    imageUrl: 'assets/images/articles2.png',
    nameArticles: 'How to: Digital Art from Sketch',
    tags: 'Art Course',
    favorite: false,
  ),
];
