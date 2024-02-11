
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:menalup/core/utils/image_constant.dart';
import 'package:menalup/core/utils/size_utils.dart';
import 'package:menalup/theme/app_decoration.dart';
import 'package:menalup/theme/custom_text_style.dart';
import 'package:menalup/theme/theme_helper.dart';
import 'package:menalup/widgets/app_bar/appbar_subtitle.dart';
import 'package:menalup/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:menalup/widgets/app_bar/appbar_title.dart';
import 'package:menalup/widgets/app_bar/appbar_trailing_image.dart';
import 'package:menalup/widgets/app_bar/mental_app_bar.dart';
import 'package:menalup/widgets/image_view.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 9.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  SizedBox(
                    height: 177.v,
                    width: 211.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.h,
                              vertical: 5.v,
                            ),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 53.v),
                                Text(
                                  "Unit 1",
                                  style: theme.textTheme.titleLarge,
                                ),
                                SizedBox(height: 4.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 3.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 27.v,
                                        width: 107.h,
                                        margin: EdgeInsets.only(bottom: 1.v),
                                        child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Container(
                                                  height: 14.v,
                                                  width: 101.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                    child:
                                                        LinearProgressIndicator(
                                                      value: 0.34,
                                                      backgroundColor:
                                                          appTheme.gray400,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        appTheme.orange300,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCrown,
                                              height: 27.v,
                                              width: 31.h,
                                              alignment: Alignment.centerLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10.v),
                                        child: Text(
                                          "3/40",
                                          style: CustomTextStyles
                                              .bodyMediumBlack900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgHorse,
                          height: 98.v,
                          width: 124.h,
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 64.v),

                  //intro container
                  Container(
                    height: 140.adaptSize,
                    width: 140.adaptSize,
                    margin: EdgeInsets.symmetric(horizontal: 79.h),
                    padding: EdgeInsets.symmetric(
                      vertical: 21.8,
                      horizontal: 12.h,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup6,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 23.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgHandsPencil1,
                          height: 42.v,
                          width: 77.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "1",
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "Intro",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 140.adaptSize,
                            width: 140.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 25.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup6,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgHandsBook,
                                    height: 64.v,
                                    width: 82.h,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      top: 14.v,
                                      bottom: 15.v,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 2.h,
                                    top: 71.v,
                                  ),
                                  child: Text(
                                    " 1",
                                    style:
                                        CustomTextStyles.bodyMediumBlack900_1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Text(
                            "Phrases",
                            style: theme.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Column(
                          children: [
                            Container(
                              height: 140.adaptSize,
                              width: 140.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 13.h,
                                vertical: 25.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup6,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBike,
                                    height: 68.v,
                                    width: 86.h,
                                    margin: EdgeInsets.only(
                                      left: 10.h,
                                      top: 10.v,
                                      bottom: 10.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 71.v,
                                    ),
                                    child: Text(
                                      "1",
                                      style:
                                          CustomTextStyles.bodyMediumBlack900_1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 8.v),
                            Text(
                              "Travel",
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    height: 140.adaptSize,
                    width: 140.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 55.h,
                      vertical: 51.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup6,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imglock,
                      height: 38.v,
                      width: 30.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140.adaptSize,
                        width: 140.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 55.h,
                          vertical: 51.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup6,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imglock,
                          height: 38.v,
                          width: 30.h,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        height: 140.adaptSize,
                        width: 140.adaptSize,
                        margin: EdgeInsets.only(left: 17.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 55.h,
                          vertical: 51.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup6,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imglock,
                          height: 38.v,
                          width: 30.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Verbal skills",
                margin: EdgeInsets.only(left: 49.h),
      ),
      actions: [
        CustomImageView(
            imagePath: ImageConstant.imgCrown,
            height: 27.v,
            width: 31.h,
            margin: EdgeInsets.only(right: 15),

          ),
        AppbarSubtitleOne(
          text: "3",
          margin: EdgeInsets.only(right: 15 , top: 5),

        ),
          AppbarTrailingImage(
          imagePath: ImageConstant.imgdimond,
        ),
        AppbarSubtitle(
          text: "213",
          margin: EdgeInsets.only(right: 50),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}

 /*Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Statistics",
                  style: TextStyle(
                      fontSize: 30, fontFamily: 'Roboto', height: 0.9))
            ],
          ),
        ),
        // User Statistics Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Row(
              children: [
                // Streak and Current League
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 180,
                      height: 69,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xffdfdad8), width: 3)),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/Vector (2).png',
                                width: 26,
                                height: 35,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("3",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                      height: 0.8)),
                              Text("Day Streak",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff92928e)))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 69,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xffdfdad8), width: 3)),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/noto_3rd-place-medal.png',
                                width: 34,
                                height: 34,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("3",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                      height: 0.8)),
                              Text("Day Streak",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff92928e)))
                            ],
                          )
                        ],
                      ),
                    ),*/