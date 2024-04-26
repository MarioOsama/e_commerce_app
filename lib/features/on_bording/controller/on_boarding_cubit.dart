import 'package:bloc/bloc.dart';

import '../../../core/utils/theming/app_images.dart';

class OnBoardingCubit extends Cubit<int> {
  OnBoardingCubit() : super(0);

  // * Use to change index
  void nextIndex() {
    if (state < 2) {
      emit(state + 1);
    }
  }

// * Use to change image by index
  String onBorderImages() {
    List<String> imgList = [
      AppImages.onBoardingScreennbor1,
      AppImages.onBoardingScreennbor2,
      AppImages.onBoardingScreennbor3,
    ];
    return imgList[state];
  }

// * Use to change title by index
  String onBordertitle() {
    List<String> onBordertitle = [
      "Welcome to Shoppify app",
      "exclusive offer!",
      "are you ready?",
    ];
    return onBordertitle[state];
  }

// * Use to change subtitle by index
  String onBorderSubtitle() {
    List<String> onBorderSuptitle = [
      "Discover with us all the wonderful benefits it offers you.",
      "Get details about exclusive offers and discounts available to new customers.",
      "Let's start your journey with us!",
    ];
    return onBorderSuptitle[state];
  }
}
