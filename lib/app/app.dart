import 'package:flutter/material.dart';
import '../core/routes/routes.dart';
import '../core/styles.dart/stylekit.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Real Estate',
        routerDelegate: router.routerDelegate,
        // locale: selectedLocale,
        // localizationsDelegates: const [
        //   AppLocalizations.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // supportedLocales: const [
        // Locale('en'), // English
        // Locale('ar'), // Arabic
        // Locale('hi'), // Hindi
        // Locale('fr'), // French
        // ],
        // theme: Themes.lightTheme,
        // darkTheme: Themes.darkTheme,
        // themeMode: themeMode,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        builder: (context, child) {
          $styles = AppStyle(
            appSize: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
          );
          return child!;
        },
      ),
    );
  }
}
