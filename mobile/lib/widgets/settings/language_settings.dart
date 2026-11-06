import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:immich_mobile/constants/locales.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/services/localization.service.dart';
import 'package:immich_mobile/widgets/common/search_field.dart';
import 'package:immich_ui/immich_ui.dart';

class LanguageSettings extends HookWidget {
  const LanguageSettings({super.key});

  Future<void> _applyLanguageChange(
    BuildContext context,
    ValueNotifier<Locale> selectedLocale,
    ValueNotifier<bool> isLoading,
  ) async {
    isLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      if (!context.mounted) {
        return;
      }

      await context.setLocale(selectedLocale.value);
      await loadTranslations();
    } finally {
      isLoading.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final localeEntries = useMemoized(() => locales.entries.toList(), const []);
    final currentLocale = context.locale;
    final filteredLocaleEntries = useState<List<MapEntry<String, Locale>>>(localeEntries);
    final selectedLocale = useState<Locale>(currentLocale);

    final isLoading = useState<bool>(false);
    final isButtonDisabled = selectedLocale.value == currentLocale || isLoading.value;

    final searchController = useTextEditingController();
    final searchFocusNode = useFocusNode();
    final debounceTimer = useRef<Timer?>(null);

    void onSearch(String searchTerm) {
      debounceTimer.value?.cancel();
      debounceTimer.value = Timer(const Duration(milliseconds: 500), () {
        if (searchTerm.isEmpty) {
          filteredLocaleEntries.value = localeEntries;
        } else {
          filteredLocaleEntries.value = localeEntries
              .where((entry) => entry.key.toLowerCase().contains(searchTerm.toLowerCase()))
              .toList();
        }
      });
    }

    void clearSearch() {
      searchController.clear();
      onSearch('');
    }

    useEffect(() {
      void searchListener() => onSearch(searchController.text);
      searchController.addListener(searchListener);
      return () {
        searchController.removeListener(searchListener);
        debounceTimer.value?.cancel();
      };
    }, [searchController]);

    return SafeArea(
      child: Column(
        children: [
          _LanguageSearchBar(
            controller: searchController,
            focusNode: searchFocusNode,
            onClear: clearSearch,
            onChanged: (_) => onSearch(searchController.text),
          ),
          Expanded(
            child: filteredLocaleEntries.value.isEmpty
                ? const _LanguageNotFound()
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(SettingsMetrics.pageInset, 8, SettingsMetrics.pageInset, 16),
                    itemCount: filteredLocaleEntries.value.length,
                    itemExtent: SettingsMetrics.rowHeight,
                    scrollCacheExtent: const .pixels(100),
                    itemBuilder: (context, index) {
                      final countryName = filteredLocaleEntries.value[index].key;
                      final localeValue = filteredLocaleEntries.value[index].value;
                      final bool isSelected = selectedLocale.value == localeValue;

                      return _LanguageItem(
                        key: ValueKey(localeValue.toString()),
                        countryName: countryName,
                        isSelected: isSelected,
                        isFirst: index == 0,
                        isLast: index == filteredLocaleEntries.value.length - 1,
                        onTap: () {
                          selectedLocale.value = localeValue;
                        },
                      );
                    },
                  ),
          ),
          if (filteredLocaleEntries.value.isNotEmpty)
            _LanguageApplyButton(
              isDisabled: isButtonDisabled,
              isLoading: isLoading.value,
              onPressed: () => _applyLanguageChange(context, selectedLocale, isLoading),
            ),
        ],
      ),
    );
  }
}

class _LanguageSearchBar extends StatelessWidget {
  const _LanguageSearchBar({
    required this.controller,
    required this.focusNode,
    required this.onClear,
    required this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onClear;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(SettingsMetrics.pageInset, 8, SettingsMetrics.pageInset, 4),
      child: SearchField(
        autofocus: false,
        contentPadding: const EdgeInsets.all(12),
        hintText: context.t.language_search_hint,
        prefixIcon: const Icon(AppIcons.search),
        suffixIcon: controller.text.isNotEmpty ? IconButton(icon: const Icon(AppIcons.x), onPressed: onClear) : null,
        controller: controller,
        onChanged: onChanged,
        focusNode: focusNode,
        onTapOutside: (_) => focusNode.unfocus(),
      ),
    );
  }
}

class _LanguageNotFound extends StatelessWidget {
  const _LanguageNotFound();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(AppIcons.searchX, size: 64, color: context.colorScheme.onSurface.withValues(alpha: 0.4)),
          const SizedBox(height: 8),
          Text(
            context.t.language_no_results_title,
            style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.onSurface),
          ),
          const SizedBox(height: 4),
          Text(
            context.t.language_no_results_subtitle,
            style: context.textTheme.bodyMedium?.copyWith(color: context.colorScheme.onSurface.withValues(alpha: 0.8)),
          ),
        ],
      ),
    );
  }
}

class _LanguageApplyButton extends StatelessWidget {
  const _LanguageApplyButton({required this.isDisabled, required this.isLoading, required this.onPressed});

  final bool isDisabled;
  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.colorScheme.surface),
      child: Padding(
        padding: const EdgeInsets.all(SettingsMetrics.pageInset),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: isDisabled ? null : onPressed,
            child: isLoading
                ? const SizedBox.square(dimension: 24, child: CircularProgressIndicator(strokeWidth: 2))
                : Text(context.t.setting_languages_apply),
          ),
        ),
      ),
    );
  }
}

class _LanguageItem extends StatelessWidget {
  const _LanguageItem({
    super.key,
    required this.countryName,
    required this.isSelected,
    required this.isFirst,
    required this.isLast,
    required this.onTap,
  });

  final String countryName;
  final bool isSelected;
  final bool isFirst;
  final bool isLast;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(SettingsMetrics.radius);
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: isFirst ? radius : Radius.zero, bottom: isLast ? radius : Radius.zero),
    );

    // One row of a single grouped list: only the first and last rows round
    // their corners, and hairlines separate the rest.
    return Material(
      color: context.colorScheme.surfaceContainer,
      shape: shape,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Expanded(
            child: SettingsTile(
              title: countryName,
              selected: isSelected,
              showChevron: false,
              onTap: onTap,
              trailing: isSelected ? Icon(AppIcons.check, color: context.primaryColor, size: 20) : null,
            ),
          ),
          if (!isLast) const SettingsDivider(),
        ],
      ),
    );
  }
}
