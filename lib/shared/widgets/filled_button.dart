import 'package:flutter/material.dart';

import '../shared.dart';

class FilledButton extends StatelessWidget {
  const FilledButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.contentColor,
    this.color = primary,
    this.width,
    this.padding = const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
    this.borderRadius = 12.0,
    this.height = 48.0,
    this.isLoading = false,
    this.shadow = true,
    this.border,
  }) : super(key: key);
  final Widget child;
  final Color color;
  final double? width;
  final double? height;
  final Color? contentColor;
  final void Function() onPressed;

  final EdgeInsets padding;
  final double borderRadius;
  final bool isLoading;
  final bool shadow;
  final double? border;

  @override
  Widget build(BuildContext context) {
    Color color = isLoading ? const Color(0xffF3F3F7) : this.color;

    final brightness = color.computeLuminance();
    final isDark = brightness < 0.6;
    Color contentColor =
        this.contentColor ?? (isDark ? Colors.white : Colors.black);

    if (isLoading) contentColor = const Color(0xff9691B5);

    Widget body = AnimatedContainer(
      width: width,
      height: height,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: shadow
            ? [
                const BoxShadow(
                  color: Color(0x1A000000),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ]
            : null,
        border: border != null
            ? Border.all(
                color: const Color(0xffE5E5E5),
                width: border!,
              )
            : null,
      ),
      padding: padding,
      child: Align(
        widthFactor: 1.0,
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: contentColor,
            fontWeight: FontWeight.w500,
          ),
          child: IconTheme(
            data: Theme.of(context).iconTheme.copyWith(color: contentColor),
            child: child,
          ),
        ),
      ),
    );

    if (!isLoading) {
      body = TouchableScale(
        onPressed: onPressed,
        isLoading: isLoading,
        child: body,
      );
    }

    return Material(
      color: Colors.transparent,
      child: body,
    );
  }
}
