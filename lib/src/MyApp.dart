import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:listas/src/pages/alert.dart';
//import 'package:listas/src/pages/HomeUno.dart';
//import 'package:listas/src/pages/homepage.dart';

import '../routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', 'ES'), // Spanish, country code
        const Locale('es', 'MX'), // Spanish, country code mexican
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      initialRoute: "/", // este marca que la diagonal es homepage
      routes: routes(context),
      onGenerateRoute: (RouteSettings settings) {
        print(settings.name);
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
        //home: HomePage()  //se ira cambiando segun necesitemos
      },
    );
  }
}
