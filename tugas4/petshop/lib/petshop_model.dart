class Pshop {
  final String image;
  final String title;
  final String description;
  final double rating;

  const Pshop({
    required this.image,
    required this.title,
    required this.description,
    required this.rating,
  });
}

List<Pshop> ListPshop = [
  const Pshop(
      image: 'img/lezato.png',
      title: 'Lezato',
      description: 'Catfood terfavorit yang ada di toko kami, dengan rasa tuna yang pastinya bisa meningkatkan nafsu makan kucing anda, tersedia dalam kemasan 1Kg dan 1/2Kg',
      rating: 10.0),
  const Pshop(
      image: 'img/bolt.png',
      title: 'Bolt',
      description: 'Catfood terlaris yang ada di toko kami, ada dua rasa yang tersedia yakni tuna dan salmon, tersedia dalam kemasan 1Kg dan 1/2Kg',
      rating: 8.5),
  const Pshop(
      image: 'img/ori.png',
      title: 'Ori Cat',
      description: 'Catfood termurah yang ada di toko kami, dengan rasa tuna, dan tersedia dalam kemasan 1Kg',
      rating: 7.5),
];
