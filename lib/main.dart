import 'package:flutter/material.dart';
import 'package:quizz_like_application/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale('fa', 'IR'),
      ],
      locale: Locale("fa", "IR"),
      theme: ThemeData(fontFamily: 'Vazir'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
