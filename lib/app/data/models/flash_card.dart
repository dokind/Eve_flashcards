class FlashCard {
  final String name;
  final String desc;
  final String? imgUrl;
  final num totalWords;
  final num memorizedWords;

  FlashCard({
    required this.name,
    required this.desc,
    this.imgUrl,
    required this.totalWords,
    this.memorizedWords = 0,
  });
}
