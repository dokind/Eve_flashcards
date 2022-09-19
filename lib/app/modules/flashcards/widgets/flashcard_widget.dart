import 'package:flutter/material.dart';

import '../../../data/data.dart';

class FlashcardWidget extends StatelessWidget {
  const FlashcardWidget({
    required this.flashCard,
    Key? key,
  }) : super(key: key);
  final FlashCard flashCard;

  @override
  Widget build(BuildContext context) {
    double? percentage = flashCard.memorizedWords / flashCard.totalWords;
    return GestureDetector(
      onTap: () {
        // Get.to(
        //   arguments: indexCard,
        //   transition: Transition.downToUp,
        //   // () => IndexCardDetailView(),
        //   // binding: IndexCardDetailBinding(),
        // );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.network(
              flashCard.imgUrl ?? '',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(
                flashCard.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: Text(
                flashCard.desc,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: LinearProgressIndicator(
                          value: percentage,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Theme.of(context).colorScheme.secondary,
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
