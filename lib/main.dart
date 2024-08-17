import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tarweej_platform/firebase_options.dart';
import 'package:tarweej_platform/tarweej_platform_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const TarweejPlatformApp());
}
