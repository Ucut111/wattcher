import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/app/di/locator.dart';
import 'package:watchers_widget/src/features/common/domain/models/status_name.dart';
import 'package:watchers_widget/src/features/common/widgets/loading_widget.dart';
import 'package:watchers_widget/src/features/onboarding/presentation/logic/onboarding_bloc_params.dart';
import 'package:watchers_widget/src/features/onboarding/presentation/onboarding_screen.dart';

class WatchersWidget extends StatefulWidget {
  final String userId;
  final String roomId;
  final StatusName? statusName;

  const WatchersWidget({
    required this.userId,
    required this.roomId,
    this.statusName,
  });

  @override
  State<WatchersWidget> createState() => _WatchersWidgetState();
}

class _WatchersWidgetState extends State<WatchersWidget> {
  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  void dispose() {
    locator.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    return FutureBuilder<void>(
      future: locator.allReady(),
      builder: (context, snapshot) {
        return Sizer(
          builder: (context, orientation, deviceType) {
            return snapshot.hasData
                ? Navigator(
                    onGenerateRoute: (_) => OnboardingScreen.route(
                      onboardingBlocParams: OnboardingBlocParams(
                        userId: widget.userId,
                        statusName: widget.statusName,
                      ),
                      externalRoomId: widget.roomId,
                    ),
                  )
                : const LoadingScreen();
          },
        );
      },
    );
  }
}
