import 'package:flutter/material.dart';
import 'package:weather_app/l10n/l10n.dart';
import 'package:weather_app/weather/location_finder/view/weather_location_finder_view.dart';
import 'package:weather_app/weather/view/weather_home_view.dart';

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
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // home: const WeatherHomeView(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const WeatherHomePage(),
        '/location': (context) => const WeatherLocationFinderPage(),
      },
    );
  }
}
