import 'package:e_commerce_app/controller/on_bording/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/theming/app_text_style.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, int>(builder: (context, state) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // * Title
        Text(context.read<OnBoardingCubit>().onBordertitle(),
            style: AppTextStyle.styleBody2Medium(context).copyWith(
              color: Colors.white,
              fontSize: 28,
            )),
        // * Subtitle
        Text(context.read<OnBoardingCubit>().onBorderSuptitle(),
            style: AppTextStyle.styleBody2Medium(context).copyWith(
              color: Colors.white,
              fontSize: 18,
            ))
      ]);
    });
  }
}
