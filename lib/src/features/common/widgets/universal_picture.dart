import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UniversalPicture extends StatelessWidget {
  final String url;

  const UniversalPicture(this.url);

  @override
  Widget build(BuildContext context) {
    if (url.contains('.svg')) {
      return SvgPicture.network(
        url,
      );
    }
    return Image.network(
      url,
    );
  }
}
