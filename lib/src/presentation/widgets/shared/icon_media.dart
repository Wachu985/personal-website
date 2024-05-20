import 'package:flutter/material.dart';

class IconMedia extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double? iconSize;

  const IconMedia({
    super.key,
    required this.onTap,
    required this.icon,
    this.backgroundColor = Colors.blue,
    this.iconColor = Colors.white,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize,
      onPressed: onTap,
      icon: Icon(
        icon,
        color: iconColor,
      ),
      style:
          IconButton.styleFrom(backgroundColor: backgroundColor, elevation: 5),
    );
  }
}
