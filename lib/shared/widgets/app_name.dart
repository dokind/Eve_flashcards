import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  const AppName({super.key, this.style = const TextStyle()});
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text('Eve flash cards', style: style);
  }
}
