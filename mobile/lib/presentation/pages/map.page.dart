import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/presentation/widgets/map/map.widget.dart';
import 'package:immich_mobile/presentation/widgets/map/map_settings_sheet.dart';
import 'package:immich_ui/immich_ui.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

@RoutePage()
class MapPage extends StatelessWidget {
  final LatLng? initialLocation;

  const MapPage({super.key, this.initialLocation});

  Future<void> onSettingsPressed(BuildContext context) {
    return showModalBottomSheet(
      sheetAnimationStyle: AppMotion.styleOf(context, AppMotion.sheet),
      elevation: 0.0,
      showDragHandle: true,
      isScrollControlled: true,
      context: context,
      builder: (_) => const MapSettingsSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapView(initialLocation: initialLocation),
          Positioned(
            left: 20,
            top: 70,
            child: IconButton.filled(
              onPressed: () => ContextHelper(context).pop(),
              icon: const Icon(AppIcons.chevronLeftDir),
              style: IconButton.styleFrom(
                padding: const EdgeInsets.all(ImmichSpacing.md),
                backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: .9),
                foregroundColor: Theme.of(context).colorScheme.onSurface,
                elevation: 0,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 70,
            child: IconButton.filled(
              onPressed: () => onSettingsPressed(context),
              icon: const Icon(AppIcons.ellipsisVertical),
              style: IconButton.styleFrom(
                padding: const EdgeInsets.all(ImmichSpacing.md),
                backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: .9),
                foregroundColor: Theme.of(context).colorScheme.onSurface,
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
