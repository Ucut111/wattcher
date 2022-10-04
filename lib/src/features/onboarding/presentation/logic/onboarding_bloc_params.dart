import 'package:watchers_widget/src/features/common/domain/models/status_name.dart';

class OnboardingBlocParams {
  final String userId;
  final StatusName? statusName;

  OnboardingBlocParams({
    required this.userId,
    required this.statusName,
  });
}
