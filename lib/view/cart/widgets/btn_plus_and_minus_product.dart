import 'package:flutter/material.dart';

class BtnPlusAndMinusProduct extends StatelessWidget {
  const BtnPlusAndMinusProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(12)),
          child: const Text(
            "-",
            style: TextStyle(
              color: Color(0xFFC9CCCF),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Text("1"),
        Container(
          alignment: Alignment.center,
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: const Color(0xFF495057),
              borderRadius: BorderRadius.circular(12)),
          child: const Text(
            "+",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
