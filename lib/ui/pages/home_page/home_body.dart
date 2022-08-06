import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/resources/resources.dart';
import 'package:travel_app/ui/utils/app_colors.dart';
import 'package:travel_app/ui/widgets/big_text.dart';
import 'package:travel_app/ui/widgets/small_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34.r),
          topRight: Radius.circular(34.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16.w, top: 40.h, right: 16.w),
            child: BigText(text: 'Activities you Love'),
          ),
          const _ActivitiesList(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: BigText(text: 'Recommended Place'),
          ),
          const _PlacesList(),
          const _CreatePlaceButton(),
        ],
      ),
    );
  }
}

class _ActivitiesList extends StatelessWidget {
  const _ActivitiesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 40.h),
      height: 123.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 6.w),
          const _ActivitiesListItem(
            text: 'Kayaking',
            imagePath: Svgs.kayaki,
            firstColor: '#6B83DB',
            secondColor: '#152767',
          ),
          const _ActivitiesListItem(
            text: 'Fishing',
            imagePath: Svgs.fish,
            firstColor: '#3CC0F1',
            secondColor: '#1274B7',
          ),
          const _ActivitiesListItem(
            text: 'Camping',
            imagePath: Svgs.camp,
            firstColor: '#4DE3B9',
            secondColor: '#0E2C3A',
          ),
          SizedBox(width: 6.w),
        ],
      ),
    );
  }
}

class _ActivitiesListItem extends StatelessWidget {
  final String imagePath;
  final String text;
  final String firstColor;
  final String secondColor;
  const _ActivitiesListItem({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.firstColor,
    required this.secondColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 123.h,
        width: 123.w,
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: EdgeInsets.only(top: 23.h, bottom: 14.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              HexColor.fromHex(firstColor),
              HexColor.fromHex(secondColor),
            ],
            tileMode: TileMode.mirror,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(imagePath),
              ),
            ),
            SmallText(
              text: text,
              color: Colors.white,
              size: 14.sp,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}

class _PlacesList extends StatelessWidget {
  const _PlacesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 45.h),
      height: 169.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 6.w),
          const _PlacesListItem(
            firstText: 'Gunung Salak',
            secondText: 'Indonesia',
            imagePath: Images.img1,
          ),
          const _PlacesListItem(
            firstText: 'Mount Everest',
            secondText: 'Nepal',
            imagePath: Images.img2,
          ),
          const _PlacesListItem(
            firstText: 'Dolomite Mountains',
            secondText: 'Italy',
            imagePath: Images.img3,
          ),
          SizedBox(width: 6.w),
        ],
      ),
    );
  }
}

class _PlacesListItem extends StatelessWidget {
  final String imagePath;
  final String firstText;
  final String secondText;
  const _PlacesListItem({
    Key? key,
    required this.imagePath,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 169.h,
        width: 169.h,
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: EdgeInsets.only(top: 23.h, bottom: 14.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmallText(
              text: firstText,
              color: Colors.white,
              size: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 3.h),
            SmallText(
              text: secondText,
              color: Colors.white,
              size: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}

class _CreatePlaceButton extends StatelessWidget {
  const _CreatePlaceButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w, bottom: 40.h, right: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 29.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: HexColor.fromHex('#F6F7FB'),
        borderRadius: BorderRadius.all(
          Radius.circular(18.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                text: 'Create New Place',
                size: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 7.h),
              SmallText(
                text: 'Create camping with your Friends',
                size: 14.sp,
                color: AppColors.greyFont,
              )
            ],
          ),
          Container(
            height: 48.h,
            width: 48.w,
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.all(Radius.circular(24.r)),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                Svgs.plus,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
