import 'package:e_commerce_app/core/utils/strings/app_strings.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_images.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_elevated_bottom.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_social_media_auth.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool currentBool = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    AppImages.appIconImage,
                    height: height * .17,
                  ),
                ),
                Center(
                  child: Text(
                    AppStrings.welcomeToShoppify,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    AppStrings.appSlogan,
                    style: TextStyle(
                      color: AppColors.gray900,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  AppStrings.email,
                  style: TextStyle(
                    color: AppColors.gray700,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                CustomTextFormFeild(
                  hintText: AppStrings.enterEmail,
                  icon: Icons.email,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppStrings.password,
                  style: TextStyle(
                    color: AppColors.gray700,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                CustomTextFormFeild(
                  hintText: AppStrings.enterpass,
                  icon: Icons.password_outlined,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppStrings.phone,
                  style: TextStyle(
                    color: AppColors.gray700,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                CustomTextFormFeild(
                  hintText: AppStrings.enterPhone,
                  icon: Icons.phone,
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: currentBool,
                      onChanged: (newValue) {
                        setState(() {
                          currentBool = newValue!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      activeColor: AppColors.black,
                    ),
                    Text(
                      AppStrings.terms,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.gray700),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
                const Center(
                    child: CustomElevatedBottom(
                  text: AppStrings.signUp,
                )),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: width * .8,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AppColors.gray200,
                            height: .5,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(AppStrings.orContinueWith,
                            style: TextStyle(
                              color: AppColors.gray700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Divider(
                            color: AppColors.gray200,
                            height: .5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSocialMediaAuth(imagePath: AppImages.facebookLogo),
                    CustomSocialMediaAuth(imagePath: AppImages.googleLogo),
                    CustomSocialMediaAuth(imagePath: AppImages.appleLogo),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
