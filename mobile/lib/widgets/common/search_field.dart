import 'package:flutter/material.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/extensions/theme_extensions.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.hintText,
    this.autofocus = false,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
    this.onTapOutside,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.prefixIcon,
    this.suffixIcon,
    this.filled = false,
  });

  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function(PointerDownEvent)? onTapOutside;
  final TextEditingController? controller;
  final String hintText;
  final EdgeInsetsGeometry contentPadding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool autofocus;
  final bool filled;

  static const _border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide.none,
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autofocus: autofocus,
      focusNode: focusNode,
      onChanged: onChanged,
      onTapOutside: onTapOutside ?? (_) => focusNode?.unfocus(),
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        // Borderless tinted field, like the system search bars: no outline at
        // rest and no focus ring, the caret is enough.
        filled: true,
        fillColor: context.colorScheme.surfaceContainerHigh,
        hintStyle: context.textTheme.bodyLarge?.copyWith(color: context.themeData.colorScheme.onSurfaceSecondary),
        border: _border,
        enabledBorder: _border,
        disabledBorder: _border,
        focusedBorder: _border,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
      ),
    );
  }
}
