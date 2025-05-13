import 'package:flutter/widgets.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// export 'package:flutter_localizations/flutter_localizations.dart';

import 'package:ui/src/l10n/arb/app_localizations.dart';

export 'package:ui/src/l10n/arb/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
