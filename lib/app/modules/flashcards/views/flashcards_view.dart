// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flashcards_controller.dart';
import '../widgets/flashcard_widget.dart';

class FlashcardsView extends GetView<FlashcardsController> {
  const FlashcardsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Flashcards'),
            centerTitle: true,
            floating: true,
            snap: true,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flashcards',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: controller.obx(
              onLoading: const Center(child: CircularProgressIndicator()),
              (state) => AspectRatio(
                aspectRatio: 4 / 3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state!.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: FlashcardWidget(
                        flashCard: state[index],
                      ),
                    );
                  },
                ),
              ),
              onEmpty: Center(child: Text('Empty')),
              onError: (error) => Center(
                child: Text(
                  error.toString(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
