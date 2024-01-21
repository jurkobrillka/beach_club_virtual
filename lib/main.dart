
import 'package:beach_club_virtual/core/util/start_splash.dart';
import 'package:beach_club_virtual/ui/home/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'config/theme.dart';
import 'firebase_options.dart';
import 'dependency_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );



  await initDependencies();
  runApp(MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
        Locale('sk'), // Slovak
      ],
    theme: lightTheme,
      home: Center(
    child: HomeView(),
  ))); //running the app and we are passing ROOT WIDGET
}
