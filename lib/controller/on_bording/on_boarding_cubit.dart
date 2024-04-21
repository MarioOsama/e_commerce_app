import 'package:bloc/bloc.dart';

class OnBoardingCubit extends Cubit<int> {
  OnBoardingCubit() : super(0);
  void nextIndex() {
    if (state < 2) {
      emit(state + 1);
    }
  }

  String onBorderImages() {
    List<String> imgList = [
      "assets/img/1.jpg",
      "assets/img/3.jpg",
      "assets/img/4.jpg",
    ];
    return imgList[state];
  }

  String onBordertitle() {
    List<String> onBordertitle = [
      "Welcome to Shoppify app",
      "exclusive offer!",
      "are you ready?",
    ];
    return onBordertitle[state];
  }

  String onBorderSuptitle() {
    List<String> onBorderSuptitle = [
      "Discover with us all the wonderful benefits it offers you.",
      "Get details about exclusive offers and discounts available to new customers.",
      "Let's start your journey with us!",
    ];
    return onBorderSuptitle[state];
  }
}
