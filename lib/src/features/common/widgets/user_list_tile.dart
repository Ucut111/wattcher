import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/features/common/models/user.dart';

class UserListTile extends StatelessWidget {
  final User user;
  final void Function() onTap;

  const UserListTile({
    required this.user,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipOval(
              child: SvgPicture.network(
                user.pic,
                width: 36.fw,
              ),
            ),
            SizedBox(width: 12.fw),
            Text(
              user.name,
              style: TextStyles.title(fontSize: 15),
            ),
            const Spacer(),
            GestureDetector(
              onTap: onTap,
              child: const Icon(
                Icons.more_vert,
                color: CustomColors.gray400,
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
