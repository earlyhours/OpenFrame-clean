# OpenFrame mobile design direction

Apple Photos' calm, photo-first feel, in OpenFrame's also.codes palette (warm near-black, warm off-white, one orange accent).

## Principles

- **Photos are the interface.** Chrome recedes: translucent frosted bars, few badges, no decorative color.
- **One accent.** Orange marks interaction and state only: selected tab, primary button, switch on, links, selection checks. Icons are neutral (`onSurfaceVariant`), never orange decoration.
- **Neutral surfaces.** No brown or tinted cards. Raised surfaces use the `surfaceContainer*` ladder.
- **Smooth, never showy.** Springy-but-damped motion from `AppMotion` (`packages/ui/lib/src/motion.dart`). No pop-in: fade images in, keep layouts stable while loading.

## Type

- **Geist** for all UI text: titles, labels, buttons, chips, section headers, navigation.
- **Large titles:** 32/bold/-0.6 tracking on top-level pages (Photos, Search, Albums, Library), collapsing into a 17/semibold title in a frosted bar.
- **GeistMono** only for technical values: EXIF numbers, file sizes, versions, URLs, counters.
- **GeistPixel** only for the brand wordmark and rare hero moments.

## Layout

- **Photo grid:** edge to edge with 2px gaps and square crops.
  - Thumbnails show a favorite (filled white heart, bottom left, soft shadow) and video duration (bottom right), nothing else.
  - No "uploaded" cloud badge on every tile.
- **Timeline headers:** month headers are 22/semibold with an optional muted place subtitle; day headers are 13/medium muted. Per-day select circles appear only in selection mode.
- **Grouped lists:** settings, library rows, info sheets.
  - Rounded 16px groups on `surfaceContainer`.
  - Rows 52px, inset hairline dividers, trailing chevron for navigation.
  - Muted 13px section headers above groups.
- **Radii:** cards and groups 16, album covers 12, small thumbnails 8, buttons pill.
- **Bottom navigation:** a floating frosted pill. Content scrolls underneath.

## Components (immich_ui)

- `AppIcons`: Lucide, weight 300. The only icon set.
- `AppFilledIcons` / `FilledIcon`: filled glyphs where state needs fill (favorite heart, selection check).
- `FrostedBar`: blur and translucent surface for app bars, tab bar and toolbars.
- `LargeTitleSliverAppBar`: the iOS-style large title that collapses into a frosted bar.
- `GroupedSection` / `GroupedTile`: the inset grouped list.
- `Pressable`, `FadeSlideIn`, `AppMotion`: motion.

## Viewer

- Black canvas. Tap toggles the chrome with a 200ms fade.
- Frosted top and bottom bars. Bottom actions are icons only: share, favorite (filled when on), info, delete.
- Swipe down dismisses with scale and fade.
- The info sheet rises with 20px corners and grouped sections.

## Demo mode

Build with `--dart-define=OPENFRAME_DEMO=true` (see `lib/demo/README.md`) to click through every screen without a server.
