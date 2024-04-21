import 'package:flutter/material.dart';

class BtnCheckout extends StatelessWidget {
  const BtnCheckout({super.key, this.backgroundColor, this.textColor});
  final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 62,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                backgroundColor: Colors.black),
            onPressed: () {},
            child: const Text(
              "Checkout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            )),
      ),
    );
  }
}
