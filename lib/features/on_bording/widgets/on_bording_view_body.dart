import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/features/on_bording/widgets/foter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/on_boarding_cubit.dart';

class OnBordingViewBody extends StatelessWidget {
  const OnBordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, int>(builder: (context, state) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // * OnBorard Back Ground Image
            Image.asset(
              context.read<OnBoardingCubit>().onBorderImages(),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            // * Linear Colors
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: AppColors.linearBoarding,
                ),
              ),
            ),
            // * Foter (Title, Subtitle , Next Button, DotIndicator)
            const Foter()
          ],
        );
      }),
    );
  }
}
