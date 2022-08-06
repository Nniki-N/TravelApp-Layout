import 'package:flutter/material.dart';
import 'package:travel_app/resources/resources.dart';
import 'package:travel_app/ui/pages/home_page/home_body.dart';
import 'package:travel_app/ui/pages/home_page/home_header.dart';
import 'package:travel_app/ui/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBg,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80.h,
            title: const HomeHeader(),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            backgroundColor: AppColors.homeBg,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                Images.homeBg,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: HomeBody(),
          )
        ],
      ),
    );
  }
}
