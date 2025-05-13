import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:monorepo/l10n/l10n.dart';

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      supportedLocales: AppLocalizations.supportedLocales,
      title: AppLocalizations.of(context).counterAppBarTitle,
      home: LoginPage(),
    );
  }
}
