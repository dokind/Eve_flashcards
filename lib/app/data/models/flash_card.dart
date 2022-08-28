class FlashCard {
  final String name;
  final String description;
  final bool isMemorized;

  FlashCard({
    required this.name,
    required this.description,
    this.isMemorized = false,
  });
}
