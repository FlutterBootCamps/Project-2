import 'package:flutter/material.dart';
import 'package:menalup/core/app_export.dart';
import 'package:menalup/presentation/screen2/page_tow_container.dart';
import 'package:menalup/widgets/elevated_button.dart';
import 'package:menalup/widgets/image_view.dart';
import 'package:menalup/widgets/textfield.dart';



// ignore: must_be_immutable
class PageOne extends StatelessWidget {
  PageOne({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 94.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "M",
                            style: CustomTextStyles.displayMediumffeb9f4a,
                          ),
                          TextSpan(
                            text: "E",
                            style: theme.textTheme.displayMedium,
                          ),
                          TextSpan(
                            text: "N",
                            style: CustomTextStyles.displayMediumffab70df,
                          ),
                          TextSpan(
                            text: "T",
                            style: CustomTextStyles.displayMediumff6884f6,
                          ),
                          TextSpan(
                            text: "A",
                            style: CustomTextStyles.displayMediumffecc055,
                          ),
                          TextSpan(
                            text: "L ",
                            style: theme.textTheme.displayMedium,
                          ),
                          TextSpan(
                            text: "^",
                            style: CustomTextStyles.displayMediumffab70df,
                          ),
                          TextSpan(
                            text: "u",
                            style: CustomTextStyles.displayMediumff6884f6,
                          ),
                          TextSpan(
                            text: "p",
                            style: CustomTextStyles.displayMediumffecc055,
                          ),
                          TextSpan(
                            text: "^",
                            style: theme.textTheme.displayMedium,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 59.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 56.h),
                      child: CustomTextFormField(
                        controller: userNameController,
                        hintText: "Username",
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 56.h),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 26.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 56.h),
                        child: Text(
                          "Forgot Password?",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    CustomElevatedButton(
  height: 58.v,
  text: "GO",
  margin: EdgeInsets.symmetric(horizontal: 56.h),
  buttonStyle: CustomButtonStyles.fillOrangeA,
  onPressed: () {
    // Validate the form
    if (_formKey.currentState!.validate()) {
      // Navigate to PageTwoContainer
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageTowContainer()),
      );
    }
  },
),
                    SizedBox(height: 42.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have account yet? ",
                            style: CustomTextStyles.titleMediumff000000,
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: CustomTextStyles.titleMediumff77b29f,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 12.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenshot20220125,
                      height: 368.v,
                      width: 428.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

































/* ignore: must_be_immutable
class PageOne extends StatelessWidget {
  PageOne({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       key: _formKey,

        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 94.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "M",
                            style: CustomTextStyles.displayMediumffeb9f4a,
                          ),
                          TextSpan(
                            text: "E",
                            style: theme.textTheme.displayMedium,
                          ),
                          TextSpan(
                            text: "N",
                            style: CustomTextStyles.displayMediumffab70df,
                          ),
                          TextSpan(
                            text: "T",
                            style: CustomTextStyles.displayMediumff6884f6,
                          ),
                          TextSpan(
                            text: "A",
                            style: CustomTextStyles.displayMediumffecc055,
                          ),
                          TextSpan(
                            text: "L ",
                            style: theme.textTheme.displayMedium,
                          ),
                          TextSpan(
                            text: "^",
                            style: CustomTextStyles.displayMediumffab70df,
                          ),
                          TextSpan(
                            text: "u",
                            style: CustomTextStyles.displayMediumff6884f6,
                          ),
                          TextSpan(
                            text: "p",
                            style: CustomTextStyles.displayMediumffecc055,
                          ),
                          TextSpan(
                            text: "^",
                            style: theme.textTheme.displayMedium,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 59.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 56.h),
                      child: CustomTextFormField(
                        controller: userNameController,
                        hintText: "Username",
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 56.h),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 26.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 56.h),
                        child: Text(
                          "Forgot Password?",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    CustomElevatedButton(
                      height: 58.v,
                      text: "GO",
                      margin: EdgeInsets.symmetric(horizontal: 56.h),
                      buttonStyle: CustomButtonStyles.fillOrangeA,
                      onPressed: () {
                      },
                    ),
                    SizedBox(height: 42.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have account yet? ",
                            style: CustomTextStyles.titleMediumff000000,
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: CustomTextStyles.titleMediumff77b29f,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 12.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenshot20220125,
                      height: 368.v,
                      width: 428.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/
