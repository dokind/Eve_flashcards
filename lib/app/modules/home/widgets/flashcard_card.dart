import 'package:flutter/material.dart';

import '../../../data/data.dart';
// import 'package:get/get.dart';

class FlashCardCard extends StatelessWidget {
  const FlashCardCard({
    Key? key,
    required this.flashCard,
    required this.index,
  }) : super(key: key);
  final FlashCard flashCard;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // TODO NEW PAGE FOR FLASHCARD
      // onTap: () => Get.toNamed('/flashcard/${index + 1}'),
      child: ListTile(
        title: Text(flashCard.name),
        subtitle: Text(flashCard.description),
        trailing: IconButton(
          onPressed: () {
            // TODO update flashcard
          },
          icon: Icon(Icons.star,
              color: flashCard.isMemorized ? Colors.yellow : Colors.grey[400]),
        ),
      ),
    );
  }
}
