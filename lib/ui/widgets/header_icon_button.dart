import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderIconButton extends StatelessWidget {
  final String imagePath;
  final Color color;
  final Function() onPressed;
  const HeaderIconButton({
    Key? key,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          imagePath,
          color: color,
        ),
      ),
    );
  }
}