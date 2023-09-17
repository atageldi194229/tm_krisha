import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tm_krisha/splash/splash.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScreenUtilInit(
          designSize: Size(constraints.maxWidth, constraints.maxHeight),
          builder: (context, constraints) {
            return const AppView();
          },
        );
      },
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    var defaultTheme = ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      useMaterial3: true,
    );

    defaultTheme = defaultTheme.copyWith(textTheme: GoogleFonts.ubuntuTextTheme(defaultTheme.textTheme));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tm_krisha',
      theme: defaultTheme,
      // home: const HomePage(),
      home: const SplashPage(),
    );
  }
}
