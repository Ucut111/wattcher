import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

enum ReportType { spam, abuse, porn }

extension ReportTypeX on ReportType {
  T map<T>({
    required T Function() spam,
    required T Function() insulting,
    required T Function() pornography,
  }) {
    switch (this) {
      case ReportType.spam:
        return spam();
      case ReportType.abuse:
        return insulting();
      case ReportType.porn:
        return pornography();
    }
  }

  String get title => map(
        spam: () => 'Спам',
        insulting: () => 'Оскорбления',
        pornography: () => 'Порнография',
      );
}

class ReportTypeWidget extends StatelessWidget {
  final Function(ReportType reportType) onSelected;

  const ReportTypeWidget({
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Container(
              width: 100.w,
              color: CustomColors.modalBackground,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 12, 16),
                        child: Row(
                          children: [
                            const SvgIcon(
                              Resources.report_badge,
                              size: 48,
                            ),
                            SizedBox(width: 10.fw),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Сообщить о нарушении',
                                  style: TextStyles.title(),
                                ),
                                Text(
                                  'Жалобы отправляются анонимно',
                                  style: TextStyles.secondary(),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: InkWell(
                                  onTap: () => Navigator.maybePop(context),
                                  child: const SvgIcon(Resources.close, color: CustomColors.danger),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Divider(
                        color: CustomColors.divider,
                        thickness: 1,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: ReportType.values.length,
                          itemBuilder: (context, index) {
                            final reportType = ReportType.values[index];

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .maybePop()
                                        .then((value) => onSelected(reportType));
                                  },
                                  child: Text(
                                    reportType.title,
                                    style: TextStyles.errorTextStyle(fontSize: 17),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),

                      // title,
                      // const SizedBox(height: 16),
                      // ...children,
                      // const SizedBox(height: 48),
                    ],
                  ),
                  // if (submitButton != null)
                  //   Positioned(
                  //     bottom: 21,
                  //     child: submitButton!,
                  //   ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
