import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/common/domain/models/avatar.dart';

import 'modal_title_widget.dart';
import 'modal_widget.dart';
import 'submit_button.dart';

class AvatarPickerWidget extends StatelessWidget {
  final void Function() onBackTap;
  final void Function() onSubmit;
  final void Function(Avatar) onSelectAvatar;
  final Avatar selectedAvatar;
  final List<Avatar> avatars;
  final bool isSubmitActive;

  const AvatarPickerWidget({
    required this.avatars,
    required this.onBackTap,
    required this.onSelectAvatar,
    required this.onSubmit,
    required this.selectedAvatar,
    this.isSubmitActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return ModalWidget(
      title: ModalTitleWidget(
        onBackTap: onBackTap,
        titleText: 'Аватар',
      ),
      submitButton: SubmitButton.textual(
        text: 'Сохранить',
        onTap: onSubmit,
        isActive: isSubmitActive,
      ),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Row(
          children: [
            _buildCircleAvatar(avatar: selectedAvatar),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'Выбрать другой:',
          style: TextStyles.secondary,
        ),
        const SizedBox(height: 12),
        Wrap(
          runSpacing: 16,
          spacing: 8,
          children: avatars
              .map(
                (avatar) => _buildCircleAvatar(
                  avatar: avatar,
                  isAddBadge: avatar == selectedAvatar,
                  onTap: () => onSelectAvatar(avatar),
                ),
              )
              .toList(),
        )
      ],
    );
  }

  Widget _buildCircleAvatar({
    required Avatar avatar,
    bool isAddBadge = false,
    void Function()? onTap,
  }) {
    final circleAvatar = GestureDetector(
      onTap: onTap,
      child: ClipOval(
        child: CircleAvatar(
          radius: 24.fw,
          child: SvgPicture.network(
            avatar.pic,
          ),
        ),
      ),
    );

    if (!isAddBadge) {
      return circleAvatar;
    }

    return Badge(
      toAnimate: false,
      borderRadius: BorderRadius.circular(8),
      badgeColor: CustomColors.primary,
      position: BadgePosition.bottomEnd(bottom: 0, end: 0),
      badgeContent: const SvgIcon(
        Resources.selected_mark,
        size: 8,
        color: CustomColors.onPrimary,
      ),
      child: circleAvatar,
    );
  }
}
