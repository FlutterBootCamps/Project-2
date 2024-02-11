import 'package:flutter/material.dart';
import 'package:menalup/core/app_export.dart';
import 'package:menalup/widgets/Custom_Bottom_Bar.dart';
import 'package:menalup/widgets/image_view.dart';

class PageTowContainer extends StatelessWidget {
  const PageTowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _buildHeader(context),
                SizedBox(height: 54.v),
                _buildThirtyFour(context),
                SizedBox(height: 6.v),
                _buildSeventy(context),
                SizedBox(height: 36.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: _buildThirtyOne(
                    context,
                    verbalSkillsText:"Artistic thinking",
                    threeFortyText: "35/40",
                  ),
                  
                ),
                SizedBox(height: 6.v),
                _buildSeventyOne(context),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: _buildThirtyOne(
                    context,
                    verbalSkillsText: "Verbal skills         ",
                    threeFortyText: "3/40",
                  ),
                ),
                SizedBox(height: 5.v),
                _buildNineteen(context),
                SizedBox(height: 50.v),
              ],
            ),
          ),
        ),
      ),
 bottomNavigationBar: CustomBottomBar(
        onChanged: (type) {
          // Handle bottom bar item selection here
          // You can use the 'type' parameter to identify which item was selected
        },
      ),
    );
  }
  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 71,
      width: 428,
      padding: EdgeInsets.symmetric(
        horizontal: 47.h,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgflame,
           
          ),
          Text(
            "   3",
            style: theme.textTheme.headlineSmall,
          ),
          Spacer(
            flex: 50,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgxpbox,
          
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "1432 XP",
              style: CustomTextStyles.headlineSmallTeal400,
            ),
          ),
          Spacer(
            flex: 50,
          ),
          CustomImageView(
            imagePath: ImageConstant.imghart,
          
            margin: EdgeInsets.only(right: 2.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imginfinety,
           
            margin: EdgeInsets.only(right: 2.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Logical reasoning",
            style: theme.textTheme.displaySmall,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCrown,
          
            margin: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 11.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 11.v,
            ),
            child: Text(
              "18/40",
              style: CustomTextStyles.titleLargeBlack900_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Unit 1",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 129.v,
                  ),
                  SizedBox(
                    height: 27.v,
                    width: 155.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Container(
                              height: 14.v,
                              width: 149.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray400,
                                borderRadius: BorderRadius.circular(
                                  7.h,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  7.h,
                                ),
                                child: LinearProgressIndicator(
                                  value: 0.46,
                                  backgroundColor: appTheme.gray400,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    appTheme.orange300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCrown,
                          height: 27.v,
                          width: 31.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Container(
            height: 227.v,
            width: 179.h,
            decoration: AppDecoration.fillGray400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imglock,
             
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Unit 1",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 129.v,
                  ),
                  SizedBox(
                    height: 27.v,
                    width: 155.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Container(
                              height: 14.v,
                              width: 149.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray400,
                                borderRadius: BorderRadius.circular(
                                  7.h,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  7.h,
                                ),
                                child: LinearProgressIndicator(
                                  value: 0.83,
                                  backgroundColor: appTheme.gray400,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    appTheme.orange300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCrown,
                          height: 27.v,
                          width: 31.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Container(
            height: 227.v,
            width: 179.h,
            decoration: AppDecoration.fillGray400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imglock,
             
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNineteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Unit 1",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 129.v,
                  ),
                  SizedBox(
                    height: 27.v,
                    width: 155.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Container(
                              height: 14.v,
                              width: 149.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray400,
                                borderRadius: BorderRadius.circular(
                                  7.h,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  7.h,
                                ),
                                child: LinearProgressIndicator(
                                  value: 0.26,
                                  backgroundColor: appTheme.gray400,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    appTheme.orange300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCrown,
                          height: 27.v,
                          width: 31.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Container(
            height: 227.v,
            width: 179.h,
            decoration: AppDecoration.fillGray400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.imglock,
               
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget

  /// Common widget
  Widget _buildThirtyOne(
    BuildContext context, {
    required String verbalSkillsText,
    required String threeFortyText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          verbalSkillsText,
          style: theme.textTheme.displaySmall!.copyWith(
            color: appTheme.black900.withOpacity(0.9),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgCrown,
          height: 27.v,
          width: 31.h,
          margin: EdgeInsets.only(
            top: 10.v,
            bottom: 8.v,
            right: 1.v,
            left: 20,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 10.v,
            bottom: 7.v,
          ),
          child: Text(
            threeFortyText,
            style: CustomTextStyles.titleLargeBlack900_1.copyWith(
              color: appTheme.black900.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }
}
