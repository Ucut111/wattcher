import 'package:flutter/material.dart';

import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class BeFirstWidget extends StatelessWidget {
  const BeFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.fh),
        SvgIcon(
          Resources.be_first,
          width: 256.fw,
          height: 150.fh,
        ),
        SizedBox(height: 24.fh),
        Text(
          'Будь первым!',
          style: TextStyles.title(fontWeight: FontWeight.w700, fontSize: 15),
        ),
        SizedBox(height: 30.fh),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Начните обсуждение события с другими игроками',
            style: TextStyles.title(fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
