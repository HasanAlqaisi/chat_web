import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.mainImage,
      height: MediaQuery.of(context).size.height * 0.65,
    );
  }
}
