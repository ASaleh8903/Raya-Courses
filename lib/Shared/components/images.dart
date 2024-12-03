// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class image extends StatelessWidget {
  final String path;
  final double? height, width;
  final BoxFit? fit;
  final Color? color;

  const image(
      {super.key,
      required this.path,
      this.height,
      this.width,
      this.fit,
      this.color});

  @override
  Widget build(BuildContext context) {
    if (path.endsWith("svg")) {
      return SvgPicture.asset(
        path,
        fit: fit!,
        height: height,
        width: width,
        color: color,
      );
    } else if (path.startsWith("http")) {
      return Image.network(
        path,
        fit: fit,
        height: height,
        width: width,
        color: color,
      );
    } else if (path.endsWith("json")) {
      return Lottie.asset(
        path,
        fit: fit,
        height: height,
        width: width,
      );
    } else {
      return Image.asset(
        path,
        fit: fit,
        height: height,
        width: width,
        color: color,
      );
    }
  }
}
