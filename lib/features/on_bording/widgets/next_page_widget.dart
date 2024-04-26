import 'package:e_commerce_app/features/on_bording/controller/on_boarding_cubit.dart';
import 'package:e_commerce_app/features/on_bording/widgets/btn_get_started.dart';
import 'package:e_commerce_app/features/on_bording/widgets/btn_next_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dot_indicator.dart';

class NextPageWidget extends StatelessWidget {
  const NextPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // * DotIndicator
          const DotIndicator(),
          const Spacer(),
          // * Next page Button, Get Started Button
          BlocBuilder<OnBoardingCubit, int>(builder: (context, state) {
            return state < 2 ? const BtnNextIndex() : const BtnGetStarted();
          }),
        ],
      ),
    );
  }
}
