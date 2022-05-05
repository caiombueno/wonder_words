import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:wonder_words/profile/profile_screen.dart';
import 'package:wonder_words/quotes/quotes_screen.dart';

void main() => runApp(
      const MyApp(),
    );

final routes = RouteMap(
  routes: {
    '/': (_) => const CupertinoTabPage(
          child: MyHomePage(),
          paths: ['quotes', 'profile'],
        ),
    '/quotes': (_) => const MaterialPage(child: QuotesScreen()),
    '/profile': (_) => const MaterialPage(child: ProfileScreen()),
  },
);

// https://stackoverflow.com/questions/52577366/error-while-changing-the-flutter-theme-color-to-black
const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WonderWords',
      routerDelegate: RoutemasterDelegate(routesBuilder: (_) => routes),
      routeInformationParser: const RoutemasterParser(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: primaryBlack,
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);

    return CupertinoTabScaffold(
      controller: tabState.controller,
      tabBuilder: tabState.tabBuilder,
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Quotes',
            icon: Icon(Icons.format_quote),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(CupertinoIcons.person_solid),
          ),
        ],
      ),
    );
  }
}
