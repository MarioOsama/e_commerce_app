import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/strings/app_strings.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_images.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_elevated_bottom.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_social_media_auth.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/custom_text_form_feild.dart';
import 'package:e_commerce_app/features/Auth/views/widgets/sign_up_text_span.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15, top: 40),
        child: SingleChildScrollView(
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
                  style: AppTextStyle.styleHeading1(context),
                ),
              ),
              Center(
                child: Text(
                  '${AppStrings.appName} ${AppStrings.appSlogan}',
                  style: AppTextStyle.styleHeading3Medium(context)
                      .copyWith(color: AppColors.backgroundTeritary),
                ),
              ),
              verticalSpace(
                30,
              ),
              Text(
                AppStrings.email,
                style: AppTextStyle.styleBody3(context)
                    .copyWith(color: AppColors.contentSecondary),
              ),
              verticalSpace(
                7,
              ),
              const CustomTextFormFeild(
                hintText: AppStrings.emailExample,
                icon: Icons.email,
              ),
              verticalSpace(
                23,
              ),
              Text(
                AppStrings.password,
                style: AppTextStyle.styleBody3(context)
                    .copyWith(color: AppColors.contentSecondary),
              ),
              verticalSpace(
                7,
              ),
              const CustomTextFormFeild(
                hintText: AppStrings.passwordExample,
                icon: Icons.password_outlined,
              ),
              verticalSpace(
                50,
              ),
              const Center(
                  child: CustomElevatedBottom(
                text: AppStrings.login,
              )),
              verticalSpace(
                25,
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
              verticalSpace(
                20,
              ),
              const Center(
                child: SignUpTextSpan(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
