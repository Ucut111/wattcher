import 'package:watchers_widget/src/core/constants/strings.dart';

enum Licence {
  termsAndConditions,
  privacyPolicy;

  String get text => map(
        privacyPolicy: () => Strings.privacyPolicy,
        termsAndConditions: () => Strings.termsAndConditions,
      );

  T map<T>({
    required T Function() termsAndConditions,
    required T Function() privacyPolicy,
  }) {
    switch (this) {
      case Licence.termsAndConditions:
        return termsAndConditions();
      case Licence.privacyPolicy:
        return privacyPolicy();
    }
  }

  T maybeMap<T>({
    T Function()? termsAndConditions,
    T Function()? privacyPolicy,
    required T Function() orElse,
  }) =>
      map<T>(
        termsAndConditions: termsAndConditions ?? orElse,
        privacyPolicy: privacyPolicy ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? termsAndConditions,
    T Function()? privacyPolicy,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        termsAndConditions: termsAndConditions,
        privacyPolicy: privacyPolicy,
      );
}
