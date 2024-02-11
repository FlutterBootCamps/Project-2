import 'package:flutter/material.dart';
import 'package:menalup/core/app_export.dart';
import 'package:menalup/widgets/Custom_Bottom_Bar.dart';
import 'package:menalup/widgets/image_view.dart';

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Color.fromARGB(229, 229, 229, 229),
                    leadingWidth: 478,
                    toolbarHeight: 71,
                    title: Center(
                        child: Text(
                      "Profile",
                      style: theme.textTheme.headlineLarge,
                    )),
                  ),
                  SizedBox(height: 31.v),
                  _buildFrameEight(context),
                  SizedBox(height: 29.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "Achievements",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 31.v),
                  _buildFrameNine(context),
                  SizedBox(height: 42.v),
                  _buildFrameTen(context),
                  SizedBox(height: 28.v),
                  _buildSeventyFive(context),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }

  /// Section Widget
  Widget _buildFrameEight(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSit,
            height: 104.v,
            width: 116.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 11.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 184.h,
                  child: Text(
                    "Complete 1000 word streak",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 183.h,
                  child: Text(
                    "Win 1000XP along with 300 diamonds.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBlack900_1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNine(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStuckAtHomeVertical,
            height: 96.v,
            width: 158.h,
            margin: EdgeInsets.only(bottom: 20.v),
          ),
          Container(
            width: 200,
            height: 116,
            child: Text(
              "Lorem Ipsum\nis simply dummy text of\nthe printing and\ntypesetting industry.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTen(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPebblePeoplePlant,
            height: 90.v,
            width: 122.h,
            margin: EdgeInsets.only(bottom: 20.v),
          ),
          Padding(padding: EdgeInsets.all(14)),
          Container(
            width: 200,
            height: 116,
            child: Text(
              "Lorem Ipsum\nis simply dummy text of \nthe printing and\ntypesetting industry.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPebblePeopleBasketball,
            height: 90.v,
            width: 146.h,
            margin: EdgeInsets.only(bottom: 20.v),
          ),
          Container(
            width: 200,
            height: 116,
            child: Column(
              children: [
                Text(
                  "Lorem Ipsum",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  "is simply dummy text of \nthe printing and\ntypesetting industry.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
