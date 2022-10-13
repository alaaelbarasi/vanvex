import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:vanvex/screens/home_screen.dart';
import 'package:vanvex/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themes: [
        AppTheme
            .light(), // This is standard light theme (id is default_light_theme)
        AppTheme
            .dark(), // This is standard dark theme (id is default_dark_theme)
        AppTheme(
          id: "custom_theme", // Id(or name) of the theme(Has to be unique)
          description: "My Custom Theme", // Description of theme
          data: ThemeData(
            // Real theme data
            primaryColor: Colors.black,
            accentColor: Colors.red,
          ),
        ),
      ],
      child: ThemeConsumer(
        child: Builder(
          builder: (themeContext) => MaterialApp(
              theme: ThemeProvider.themeOf(themeContext).data,
              title: 'Material App',
              initialRoute: '/',
              routes: {
                '/': (context) => SplashScreen(),
                '/home': (context) => const HomeScreen(),
              }),
        ),
      ),
    );
  }
}
