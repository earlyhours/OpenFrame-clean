import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/presentation/actions/action.dart';
import 'package:immich_mobile/providers/cast.provider.dart';
import 'package:immich_mobile/widgets/asset_viewer/cast_dialog.dart';
import 'package:immich_ui/immich_ui.dart';

class CastAction extends ActionBuilder {
  const CastAction();

  @override
  ActionItem create(BuildContext context, WidgetRef ref) {
    final isCasting = ref.watch(castProvider.select((state) => state.isCasting));

    return .new(
      icon: isCasting ? AppIcons.screenShare : AppIcons.cast,
      label: context.t.cast,
      onAction: () async => unawaited(showAppDialog(context: context, builder: (_) => const CastDialog())),
    );
  }
}
