import 'package:flutter/material.dart';
import 'package:minesweeper/blocs/game.bloc.dart';
import 'package:minesweeper/pages/splash.page.dart';
import 'package:minesweeper/themes/theme-simple.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameBloc>.value(
          value: GameBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Minesweeper',
        theme: appThemeSimple(),
        home: const SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
