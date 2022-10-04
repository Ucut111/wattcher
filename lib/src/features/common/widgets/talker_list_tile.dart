import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/common/widgets/universal_picture.dart';

import '../../../core/constants/custom_colors.dart';
import '../../../core/constants/resources.dart';
import '../../../core/constants/text_styles.dart';
import '../models/talker.dart';

class TalkerListTile extends StatefulWidget {
  final Talker talker;
  final void Function() onHideMessagesTap;
  final void Function() onBlockUserTap;
  final bool iAmAdminOrModer;

  const TalkerListTile(
      {required this.talker,
      required this.onBlockUserTap,
      required this.iAmAdminOrModer,
      required this.onHideMessagesTap});
  @override
  _TalkerListTileState createState() => _TalkerListTileState();
}

class _TalkerListTileState extends State<TalkerListTile> {
  late final Talker talker;
  late bool showActions;
  @override
  void initState() {
    talker = widget.talker;
    showActions = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: ((talker.role != 'ADMIN') &&
                (talker.isMe != true) &&
                (talker.isModer != true) &&
                (widget.iAmAdminOrModer))
            ? () {
                setState(() {
                  showActions = !showActions;
                });
              }
            : () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: CircleAvatar(
                radius: 20,
                child: UniversalPicture(
                  talker.user.pic,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if ((talker.role == 'ADMIN') || (talker.isModer == true))
                      Row(
                        children: [
                          Text(
                            talker.user.name,
                            style: TextStyles.title(fontSize: 15),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SvgIcon(
                            Resources.admin_check_mark,
                            width: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('admin',
                              style: TextStyles.title(
                                  fontSize: 15, color: CustomColors.contributionTextColor)),
                        ],
                      )
                    else
                      Text(
                        talker.user.name,
                        style: TextStyles.title(fontSize: 15),
                      ),
                    if ((talker.role != 'ADMIN') &&
                        (talker.isMe != true) &&
                        (talker.isModer != true) &&
                        (widget.iAmAdminOrModer))
                      const Icon(
                        CupertinoIcons.forward,
                        color: CustomColors.contributionTextColor,
                      )
                    else
                      Container()
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(
                    height: 1.32,
                    color: CustomColors.borderColor,
                  ),
                ),
                if (showActions) _buildActions()
              ],
            ))
          ],
        ));
  }

  Widget _buildActions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         Text(
        //           'Сделать спикером',
        //           style: TextStyles.title(fontSize: 13),
        //         ),
        //         const SizedBox(
        //           height: 4,
        //         ),
        //         const Text(
        //           'Сможет говорить в аудиочате',
        //           style: TextStyles.contribution,
        //         ),
        //       ],
        //     ),
        //     //Expanded(child: Container()),
        //     InkWell(
        //       splashColor: Colors.transparent,
        //       onTap: (){},
        //       child: CircleAvatar(
        //         radius: 18,
        //         backgroundColor: CustomColors.borderColor,
        //         child:
        //             SvgIcon(
        //               Resources.speaker,
        //              // width: 12,
        //             ),
        //       )
        //     )
        //   ]
        // ),
        // const SizedBox(
        //   height: 8,
        // ),
        // const Divider(
        //   height: 1.32,
        //   color: CustomColors.borderColor,
        // ),
        // const SizedBox(
        //   height: 8,
        // ),
        GestureDetector(
            onTap: widget.onHideMessagesTap,
            behavior: HitTestBehavior.translucent,
            child: Row(children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Скрыть сообщения',
                    style: TextStyles.title(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Видно только админу',
                    style: TextStyles.contribution,
                  ),
                ],
              )),
              InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: CustomColors.blockColor,
                    child: SvgIcon(
                      Resources.brick,
                      //width: 12,
                    ),
                  ))
            ])),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          height: 1.32,
          color: CustomColors.borderColor,
        ),
        const SizedBox(
          height: 8,
        ),
        GestureDetector(
            onTap: widget.onBlockUserTap,
            behavior: HitTestBehavior.translucent,
            child: Row(children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Заблокировать',
                    style: TextStyles.title(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Добавить в черный список',
                    style: TextStyles.contribution,
                  ),
                ],
              )),
              InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: CustomColors.blockColor,
                    child: SvgIcon(
                      Resources.block,
                      width: 21,
                    ),
                  ))
            ])),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          height: 1.32,
          color: CustomColors.borderColor,
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
