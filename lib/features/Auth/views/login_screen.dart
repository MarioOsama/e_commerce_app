import 'package:e_commerce_app/core/utils/strings/app_strings.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_images.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_elevated_bottom.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_social_media_auth.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  AppImages.appIconImage,
                  height: height * .2,
                ),
              ),
              Center(
                child: Text(
                  AppStrings.welcomeBack,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Center(
                child: Text(
                  '${AppStrings.appName} ${AppStrings.appSlogan}',
                  style: TextStyle(
                    color: AppColors.gray900,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
                height: 25,
              ),
              const Center(
                  child: CustomElevatedBottom(
                text: AppStrings.login,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
