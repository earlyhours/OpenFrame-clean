import 'package:flutter/material.dart' show IconData, Icons;
import 'package:lucide_icons_flutter/lucide_icons_300.dart';

/// The app's one icon set. Change the weight here to restyle every icon.
typedef AppIcons = LucideIcons300;

/// Filled state glyphs paired with the outline icon set.
abstract final class AppFilledIcons {
  static const IconData heart = Icons.favorite_rounded;
}
