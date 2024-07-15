import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:multi_language_app/assets/languages/locale_keys.g.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnglish = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _isEnglish
              ? LocaleKeys.translation_waiting_for_load_assignment.tr()
              : LocaleKeys.translation_waiting_for_load_assignment.tr(),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _isEnglish = !_isEnglish;
              if (_isEnglish) {
                context.setLocale(const Locale('en', 'US'));
              } else {
                context.setLocale(const Locale('es', 'ES'));
              }
            });
          },
          child: Text(
            _isEnglish ? 'Switch to Spanish' : 'Switch to English',
          ),
        ),
      ),
    );
  }
}
