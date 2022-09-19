import 'package:flutter/material.dart';

class SelectFlashcardMenu extends StatelessWidget {
  const SelectFlashcardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: AnimatedContainer(
        height: MediaQuery.of(context).size.height * 0.6,
        width: 300,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.black.withOpacity(0.5),
            //   spreadRadius: 5,
            //   blurRadius: 7,
            //   offset: const Offset(0, 3),
            // ),
          ],
          border: Border.all(
            color: Colors.grey[300]!,
            width: 2,
          ),
        ),
      ),
    );
  }
}
