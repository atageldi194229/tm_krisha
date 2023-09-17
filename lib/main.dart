import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tm_krisha/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  // );

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // statusBarColor: Colors.pink, // status bar color
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ));

  // Google Fonts do not allow fetching fonts
  GoogleFonts.config.allowRuntimeFetching = false;

  runApp(const App());
}
