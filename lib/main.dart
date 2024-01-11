
import 'package:beach_club_virtual/ui/home/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
    theme: lightTheme,
      home: Center(
    child: HomeView(),
  ))); //running the app and we are passing ROOT WIDGET
}
