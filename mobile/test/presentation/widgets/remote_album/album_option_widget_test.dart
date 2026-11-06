import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:immich_mobile/presentation/widgets/remote_album/album_option.widget.dart';
import 'package:immich_ui/immich_ui.dart';

import '../../../widget_tester_extensions.dart';

void main() {
  group('DriftRemoteAlbumOption', () {
    testWidgets('shows kebab menu icon button', (tester) async {
      await tester.pumpConsumerWidget(const RemoteAlbumOption());

      expect(find.byIcon(AppIcons.ellipsisVertical), findsOneWidget);
    });

    testWidgets('opens menu when icon button is tapped', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.pencil), findsOneWidget);
    });

    testWidgets('shows edit album option when onEditAlbum is provided', (tester) async {
      bool editCalled = false;

      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () => editCalled = true));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.pencil), findsOneWidget);

      await tester.tap(find.byIcon(AppIcons.pencil));
      await tester.pumpAndSettle();

      expect(editCalled, isTrue);
    });

    testWidgets('hides edit album option when onEditAlbum is null', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onAddPhotos: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.pencil), findsNothing);
    });

    testWidgets('shows add photos option when onAddPhotos is provided', (tester) async {
      bool addPhotosCalled = false;

      await tester.pumpConsumerWidget(RemoteAlbumOption(onAddPhotos: () => addPhotosCalled = true));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.imagePlus), findsOneWidget);

      await tester.tap(find.byIcon(AppIcons.imagePlus));
      await tester.pumpAndSettle();

      expect(addPhotosCalled, isTrue);
    });

    testWidgets('hides add photos option when onAddPhotos is null', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.imagePlus), findsNothing);
    });

    testWidgets('shows add users option when onAddUsers is provided', (tester) async {
      bool addUsersCalled = false;

      await tester.pumpConsumerWidget(RemoteAlbumOption(onAddUsers: () => addUsersCalled = true));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.userPlus), findsOneWidget);

      await tester.tap(find.byIcon(AppIcons.userPlus));
      await tester.pumpAndSettle();

      expect(addUsersCalled, isTrue);
    });

    testWidgets('hides add users option when onAddUsers is null', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.userPlus), findsNothing);
    });

    testWidgets('shows leave album option when onLeaveAlbum is provided', (tester) async {
      bool leaveAlbumCalled = false;

      await tester.pumpConsumerWidget(RemoteAlbumOption(onLeaveAlbum: () => leaveAlbumCalled = true));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.userMinus), findsOneWidget);

      await tester.tap(find.byIcon(AppIcons.userMinus));
      await tester.pumpAndSettle();

      expect(leaveAlbumCalled, isTrue);
    });

    testWidgets('hides leave album option when onLeaveAlbum is null', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.userMinus), findsNothing);
    });

    testWidgets('shows toggle album order option when onToggleAlbumOrder is provided', (tester) async {
      bool toggleOrderCalled = false;

      await tester.pumpConsumerWidget(RemoteAlbumOption(onToggleAlbumOrder: () => toggleOrderCalled = true));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.arrowUpDown), findsOneWidget);

      await tester.tap(find.byIcon(AppIcons.arrowUpDown));
      await tester.pumpAndSettle();

      expect(toggleOrderCalled, isTrue);
    });

    testWidgets('hides toggle album order option when onToggleAlbumOrder is null', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.arrowUpDown), findsNothing);
    });

    testWidgets('shows create shared link option when onCreateSharedLink is provided', (tester) async {
      bool createSharedLinkCalled = false;

      await tester.pumpConsumerWidget(RemoteAlbumOption(onCreateSharedLink: () => createSharedLinkCalled = true));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.link), findsOneWidget);

      await tester.tap(find.byIcon(AppIcons.link));
      await tester.pumpAndSettle();

      expect(createSharedLinkCalled, isTrue);
    });

    testWidgets('hides create shared link option when onCreateSharedLink is null', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.link), findsNothing);
    });

    testWidgets('shows options option when onShowOptions is provided', (tester) async {
      bool showOptionsCalled = false;

      await tester.pumpConsumerWidget(RemoteAlbumOption(onShowOptions: () => showOptionsCalled = true));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.settings), findsOneWidget);

      await tester.tap(find.byIcon(AppIcons.settings));
      await tester.pumpAndSettle();

      expect(showOptionsCalled, isTrue);
    });

    testWidgets('hides options option when onShowOptions is null', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.settings), findsNothing);
    });

    testWidgets('shows delete album option when onDeleteAlbum is provided', (tester) async {
      bool deleteAlbumCalled = false;

      await tester.pumpConsumerWidget(RemoteAlbumOption(onDeleteAlbum: () => deleteAlbumCalled = true));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.trash2), findsOneWidget);

      await tester.tap(find.byIcon(AppIcons.trash2));
      await tester.pumpAndSettle();

      expect(deleteAlbumCalled, isTrue);
    });

    testWidgets('hides delete album option when onDeleteAlbum is null', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.trash2), findsNothing);
    });

    testWidgets('shows divider before delete album option', (tester) async {
      await tester.pumpConsumerWidget(RemoteAlbumOption(onEditAlbum: () {}, onDeleteAlbum: () {}));

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byType(Divider), findsOneWidget);
    });

    testWidgets('shows all options when all callbacks are provided', (tester) async {
      await tester.pumpConsumerWidget(
        RemoteAlbumOption(
          onEditAlbum: () {},
          onAddPhotos: () {},
          onAddUsers: () {},
          onLeaveAlbum: () {},
          onToggleAlbumOrder: () {},
          onCreateSharedLink: () {},
          onShowOptions: () {},
          onDeleteAlbum: () {},
        ),
      );

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.pencil), findsOneWidget);
      expect(find.byIcon(AppIcons.imagePlus), findsOneWidget);
      expect(find.byIcon(AppIcons.userPlus), findsOneWidget);
      expect(find.byIcon(AppIcons.userMinus), findsOneWidget);
      expect(find.byIcon(AppIcons.arrowUpDown), findsOneWidget);
      expect(find.byIcon(AppIcons.link), findsOneWidget);
      expect(find.byIcon(AppIcons.settings), findsOneWidget);
      expect(find.byIcon(AppIcons.trash2), findsOneWidget);
      expect(find.byType(Divider), findsOneWidget);
    });

    testWidgets('shows no options when all callbacks are null', (tester) async {
      await tester.pumpConsumerWidget(const RemoteAlbumOption());

      await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
      await tester.pumpAndSettle();

      expect(find.byIcon(AppIcons.pencil), findsNothing);
      expect(find.byIcon(AppIcons.imagePlus), findsNothing);
      expect(find.byIcon(AppIcons.userPlus), findsNothing);
      expect(find.byIcon(AppIcons.userMinus), findsNothing);
      expect(find.byIcon(AppIcons.arrowUpDown), findsNothing);
      expect(find.byIcon(AppIcons.link), findsNothing);
      expect(find.byIcon(AppIcons.settings), findsNothing);
      expect(find.byIcon(AppIcons.trash2), findsNothing);
    });

    testWidgets('uses custom icon color when provided', (tester) async {
      const customColor = Colors.red;

      await tester.pumpConsumerWidget(const RemoteAlbumOption(iconColor: customColor));

      final iconButton = tester.widget<IconButton>(find.byType(IconButton));
      final icon = iconButton.icon as Icon;

      expect(icon.color, equals(customColor));
    });

    testWidgets('uses default white color when iconColor is null', (tester) async {
      await tester.pumpConsumerWidget(const RemoteAlbumOption());

      final iconButton = tester.widget<IconButton>(find.byType(IconButton));
      final icon = iconButton.icon as Icon;

      expect(icon.color, equals(Colors.white));
    });

    testWidgets('applies icon shadows when provided', (tester) async {
      final shadows = [const Shadow(offset: Offset(0, 2), blurRadius: 5, color: Colors.black)];

      await tester.pumpConsumerWidget(RemoteAlbumOption(iconShadows: shadows));

      final iconButton = tester.widget<IconButton>(find.byType(IconButton));
      final icon = iconButton.icon as Icon;

      expect(icon.shadows, equals(shadows));
    });

    group('owner vs non-owner scenarios', () {
      testWidgets('owner sees all management options', (tester) async {
        // Simulating owner scenario - all callbacks provided
        await tester.pumpConsumerWidget(
          RemoteAlbumOption(
            onEditAlbum: () {},
            onAddPhotos: () {},
            onAddUsers: () {},
            onToggleAlbumOrder: () {},
            onCreateSharedLink: () {},
            onShowOptions: () {},
            onDeleteAlbum: () {},
          ),
        );

        await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
        await tester.pumpAndSettle();

        // Owner should see all management options
        expect(find.byIcon(AppIcons.pencil), findsOneWidget);
        expect(find.byIcon(AppIcons.imagePlus), findsOneWidget);
        expect(find.byIcon(AppIcons.userPlus), findsOneWidget);
        expect(find.byIcon(AppIcons.arrowUpDown), findsOneWidget);
        expect(find.byIcon(AppIcons.link), findsOneWidget);
        expect(find.byIcon(AppIcons.trash2), findsOneWidget);
        // Owner should NOT see leave album
        expect(find.byIcon(AppIcons.userMinus), findsNothing);
      });

      testWidgets('non-owner with editor role sees limited options', (tester) async {
        // Simulating non-owner with editor role - can add photos, show options, leave
        await tester.pumpConsumerWidget(
          RemoteAlbumOption(onAddPhotos: () {}, onShowOptions: () {}, onLeaveAlbum: () {}),
        );

        await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
        await tester.pumpAndSettle();

        // Editor can add photos
        expect(find.byIcon(AppIcons.imagePlus), findsOneWidget);
        // Can see options
        expect(find.byIcon(AppIcons.settings), findsOneWidget);
        // Can leave album
        expect(find.byIcon(AppIcons.userMinus), findsOneWidget);
        // Cannot see owner-only options
        expect(find.byIcon(AppIcons.pencil), findsNothing);
        expect(find.byIcon(AppIcons.userPlus), findsNothing);
        expect(find.byIcon(AppIcons.arrowUpDown), findsNothing);
        expect(find.byIcon(AppIcons.link), findsNothing);
        expect(find.byIcon(AppIcons.trash2), findsNothing);
      });

      testWidgets('non-owner viewer sees minimal options', (tester) async {
        // Simulating viewer - can only show options and leave
        await tester.pumpConsumerWidget(RemoteAlbumOption(onShowOptions: () {}, onLeaveAlbum: () {}));

        await tester.tap(find.byIcon(AppIcons.ellipsisVertical));
        await tester.pumpAndSettle();

        // Can see options
        expect(find.byIcon(AppIcons.settings), findsOneWidget);
        // Can leave album
        expect(find.byIcon(AppIcons.userMinus), findsOneWidget);
        // Cannot see any other options
        expect(find.byIcon(AppIcons.pencil), findsNothing);
        expect(find.byIcon(AppIcons.imagePlus), findsNothing);
        expect(find.byIcon(AppIcons.userPlus), findsNothing);
        expect(find.byIcon(AppIcons.arrowUpDown), findsNothing);
        expect(find.byIcon(AppIcons.link), findsNothing);
        expect(find.byIcon(AppIcons.trash2), findsNothing);
      });
    });
  });
}
