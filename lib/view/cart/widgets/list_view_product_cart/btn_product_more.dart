import 'package:flutter/material.dart';

class BtnProductMore extends StatelessWidget {
  const BtnProductMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {}, child: const Icon(Icons.more_vert));
  }
}
