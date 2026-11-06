import 'package:background_downloader/background_downloader.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:immich_mobile/pages/common/download_task_tile.dart';
import 'package:immich_ui/immich_ui.dart';

import '../../widget_tester_extensions.dart';

void main() {
  testWidgets('complete uses a checkmark and other statuses use close', (tester) async {
    await tester.pumpConsumerWidget(
      DownloadTaskTile(progress: 1, fileName: 'photo.jpg', status: TaskStatus.complete, onCancelDownload: () {}),
    );

    expect(find.byIcon(AppIcons.cloudCheck), findsOneWidget);
    expect(find.byIcon(AppIcons.x), findsNothing);

    await tester.pumpConsumerWidget(
      DownloadTaskTile(progress: 1, fileName: 'photo.jpg', status: TaskStatus.failed, onCancelDownload: () {}),
    );

    expect(find.byIcon(AppIcons.cloudCheck), findsNothing);
    expect(find.byIcon(AppIcons.x), findsOneWidget);
  });
}
