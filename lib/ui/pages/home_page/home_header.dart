
import 'package:flutter/material.dart';
import 'package:travel_app/resources/resources.dart';
import 'package:travel_app/ui/widgets/header_icon_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeaderIconButton(
          imagePath: Svgs.menuBurger,
          color: Colors.white,
          onPressed: () {},
        ),
        HeaderIconButton(
          imagePath: Svgs.bell,
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}