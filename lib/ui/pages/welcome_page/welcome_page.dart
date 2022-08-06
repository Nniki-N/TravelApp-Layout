import 'package:flutter/material.dart';
import 'package:travel_app/resources/resources.dart';
import 'package:travel_app/ui/navigation/main_navigation.dart';
import 'package:travel_app/ui/utils/app_colors.dart';
import 'package:travel_app/ui/widgets/big_text.dart';
import 'package:travel_app/ui/widgets/small_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 55.h),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.welcomeBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigText(
                text: 'The Camping App',
                color: Colors.white,
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 47.w),
                child: SmallText(
                  text:
                      'Connect with people and plan your next escape to explore this beatiful World!',
                  color: AppColors.lightGrey,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 25.h),
              const _Button(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(MainNavigationRouteNames.homePage, (route) => false),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(AppColors.orange),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.r),
            ),
          ),
        ),
        child: BigText(
          text: 'Lets go',
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
