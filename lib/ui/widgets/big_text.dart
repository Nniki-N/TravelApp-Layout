import 'package:flutter/material.dart';
import 'package:travel_app/ui/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BigText extends StatelessWidget {
  final String text;
  double? size;
  Color? color;
  final FontWeight fontWeight;
  TextOverflow textOverflow;
  TextAlign textAlign;

  BigText({
    Key? key,
    required this.text,
    this.size,
    this.color,
    this.fontWeight = FontWeight.w700,
    this.textOverflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color ?? AppColors.mainFont,
        fontSize: size ?? 24.sp,
        fontWeight: fontWeight,
      ),
      overflow: textOverflow,
      textAlign: textAlign,
    );
  }
}
