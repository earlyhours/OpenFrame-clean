import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/platform/network_api.g.dart';
import 'package:immich_mobile/providers/infrastructure/platform.provider.dart';
import 'package:immich_ui/immich_ui.dart';
import 'package:logging/logging.dart';

class SslClientCertSettings extends StatefulWidget {
  const SslClientCertSettings({super.key});

  @override
  State<StatefulWidget> createState() => _SslClientCertSettingsState();
}

class _SslClientCertSettingsState extends State<SslClientCertSettings> {
  final _log = Logger("SslClientCertSettings");

  bool isCertExist = false;

  @override
  void initState() {
    super.initState();
    unawaited(_checkCertificate());
  }

  Future<void> _checkCertificate() async {
    try {
      final exists = await networkApi.hasCertificate();
      if (mounted && exists != isCertExist) {
        setState(() => isCertExist = exists);
      }
    } catch (e) {
      _log.warning("Failed to check certificate existence", e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SettingsMetrics.rowInset),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.t.client_cert_title, style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
          const SizedBox(height: 2),
          Text(context.t.client_cert_subtitle, style: context.textTheme.bodySmall),
          const SizedBox(height: 12),
          Row(
            spacing: 12,
            children: [
              Expanded(
                child: ElevatedButton(onPressed: importCert, child: Text(context.t.client_cert_import)),
              ),
              Expanded(
                child: OutlinedButton(onPressed: !isCertExist ? null : removeCert, child: Text(context.t.remove)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showMessage(String message) {
    context.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: Text(message, style: context.textTheme.bodyLarge?.copyWith(color: context.primaryColor)),
      ),
    );
  }

  Future<void> importCert() async {
    try {
      final styling = ClientCertPrompt(
        title: context.t.client_cert_password_title,
        message: context.t.client_cert_password_message,
        cancel: context.t.cancel,
        confirm: context.t.confirm,
      );
      await networkApi.selectCertificate(styling);
      setState(() => isCertExist = true);
      showMessage(StaticTranslations.instance.client_cert_import_success_msg);
    } catch (e) {
      if (_isCancellation(e)) {
        return;
      }
      _log.severe("Error importing client cert", e);
      showMessage(StaticTranslations.instance.client_cert_invalid_msg);
    }
  }

  Future<void> removeCert() async {
    try {
      await networkApi.removeCertificate();
      setState(() => isCertExist = false);
      showMessage(StaticTranslations.instance.client_cert_remove_msg);
    } catch (e) {
      if (_isCancellation(e)) {
        return;
      }
      _log.severe("Error removing client cert", e);
      showMessage(StaticTranslations.instance.client_cert_invalid_msg);
    }
  }

  bool _isCancellation(Object e) => e is PlatformException && e.code.toLowerCase().contains("cancel");
}
