import 'package:flutter/material.dart';
import 'package:menalup/core/app_export.dart';
import 'package:menalup/widgets/Custom_Bottom_Bar.dart';
import 'package:menalup/widgets/elevated_button.dart';
import 'package:menalup/widgets/image_view.dart';

// ignore_for_file: must_be_immutable
class PageFour extends StatelessWidget {
  const PageFour({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
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
                        /*  CustomElevatedButton(
                          text: "Profile",
                          buttonTextStyle:
                              CustomTextStyles.headlineLargeBlack900,
                        ),*/
                        SizedBox(height: 28.v),
                        _buildProfileButton(context),
                        SizedBox(height: 33.v),
                        Divider(),
                        SizedBox(height: 13.v),
                        _buildFrameOneRow(context),
                        SizedBox(height: 34.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 25.h),
                            child: Text(
                              "Statistics",
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.v),
                        _buildStreakComponentGrid(context),
                        SizedBox(height: 33.v),
                        _buildFriendsRow(context),
                        SizedBox(height: 16.v),
                        _buildFiftyTwoStack(context),
                        SizedBox(height: 28.v),
                        _buildFrameSevenStack(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
            bottomNavigationBar: CustomBottomBar(),

    );
  }

  /// Section Widget
  Widget _buildProfileButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nidhi Pandya",
                  style: theme.textTheme.headlineLarge,
                ),
                Text(
                  "Nidhi12",
                  style: CustomTextStyles.titleLargeBlack900,
                ),
                SizedBox(height: 11.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClook,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "Joined March 2022",
                        style: CustomTextStyles.bodyMediumBlack900_1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 90.adaptSize,
            width: 90.adaptSize,
            radius: BorderRadius.circular(
              45.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameOneRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgParty,
            height: 47.v,
            width: 40.h,
            margin: EdgeInsets.only(left: 9.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 12.v,
              bottom: 10.v,
            ),
            child: Text(
              "Friends updates",
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgRightArrow,
            height: 16.v,
            width: 9.h,
            margin: EdgeInsets.only(
              top: 15.v,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreakComponentGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Row(
          children: [
            // Streak and Current League
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 175.7,
                  height: 64,
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xffdfdad8),
                      width: 3,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgflame,
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "3",
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            "Day Streak",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              color: Color(0xff92928e),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 175.7,
                  height: 64,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xffdfdad8),
                      width: 3,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBronze,
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bronze",
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            "Current League",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              color: Color(0xff92928e),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
                          width: 175.7,
                          height: 64,
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xffdfdad8),
                              width: 3,
                            ),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgThander,
                                  )
                                ],
                              ),
                              const SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1432",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  Text(
                                    "Total XP",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff92928e),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 175.7,
                          height: 64,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xffdfdad8),
                              width: 3,
                            ),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMedal,
                                  )
                                ],
                              ),
                              const SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "0",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  Text(
                                    "Top 3 Finishes",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff92928e),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFriendsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friends",
            style: theme.textTheme.headlineLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 7.v,
            ),
            child: Text(
              "ADD FRIENDS",
              style: CustomTextStyles.titleLargeLightblue500,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyTwoStack(BuildContext context) {
    return SizedBox(
      height: 165.v,
      width: 377.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 60.v),
              child: SizedBox(
                width: 376.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 39.v),
              child: SizedBox(
                width: 188.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 39.v),
              child: SizedBox(
                width: 189.h,
                child: Divider(
                  color: appTheme.lightBlue500,
                  indent: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FOLLOWING",
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          "FOLLOWERS",
                          style: CustomTextStyles.titleSmallBlack900,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.9.v),
                     _buildFortyThree(
                      context,
                      dynamicText: "H",
                      dynamicText1: "Hardi",
                    ),
                    SizedBox(height: 0.4.v),

                    _buildFortyThree(
                      context,
                      dynamicText: "K",
                      dynamicText1: "Krishna",
                    ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSevenStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.black900.withOpacity(0.1),
          width: 3.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 228.v,
        width: 378.h,
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBlackCat,
              height: 116.v,
              width: 177.h,
              alignment: Alignment.topLeft,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 178.h,
                        margin: EdgeInsets.only(right: 5.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Invite your friends\n",
                                style:
                                    CustomTextStyles.titleLargeff000000Medium,
                              ),
                              TextSpan(
                                text:
                                    "\nTell your friends its free and fun to learn on Mental up!",
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    CustomElevatedButton(
                      height: 47.v,
                      text: "INVITE FRIENDS",
                      buttonStyle: CustomButtonStyles.outlineLightBlue,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFortyThree(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 31.adaptSize,
          margin: EdgeInsets.only(bottom: 14.v),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.fillRed.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Text(
            dynamicText,
            style: CustomTextStyles.bodyMediumOnPrimaryContainer.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Container(
          width: 68.h,
          margin: EdgeInsets.only(left: 16.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: dynamicText1 + "\n", // Use dynamicText1 here
                  style: CustomTextStyles.titleLargeff000000,
                ),
                TextSpan(
                  text: "XP\n", // Removed hardcoded XP value
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgRightArrow,
          height: 16.v,
          width: 9.h,
          margin: EdgeInsets.only(
            top: 14.v,
            bottom: 15.v,
          ),
        ),
      ],
    );
  }
}
