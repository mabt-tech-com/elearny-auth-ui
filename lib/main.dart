import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'flutter_shared/flutter_shared_theme.dart';
import 'flutter_shared/flutter_shared_util.dart';
import 'flutter_shared/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'flutter_shared/nav/nav.dart';
import 'index.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  await FFTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FFTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);

    Future.delayed(Duration(milliseconds: 1000),
        () => setState(() => _appStateNotifier.stopShowingSplashImage()));
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FFTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'The Team E-Learny',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        scrollbarTheme: ScrollbarThemeData(
          thumbVisibility: MaterialStateProperty.all(false),
          trackVisibility: MaterialStateProperty.all(false),
          interactive: false,
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.dragged)) {
              return Color(4281880152);
            }
            if (states.contains(MaterialState.hovered)) {
              return Color(4281880152);
            }
            return Color(4281880152);
          }),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scrollbarTheme: ScrollbarThemeData(
          thumbVisibility: MaterialStateProperty.all(false),
          trackVisibility: MaterialStateProperty.all(false),
          interactive: false,
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.dragged)) {
              return Color(4284843411);
            }
            if (states.contains(MaterialState.hovered)) {
              return Color(4284843411);
            }
            return Color(4284843411);
          }),
        ),
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}
