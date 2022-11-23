import 'package:flutter/material.dart';
import 'package:ridwan/l10n/l10n.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  // Simplified flutter localizations.
  // using the `!` operator everywhere is not good practice.
  //
  // At runtime this will never be null, as long as we call it inside
  // a *descendant* of MaterialApp (which is always the case).
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
