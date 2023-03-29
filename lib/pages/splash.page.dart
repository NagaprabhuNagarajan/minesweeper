import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:minesweeper/blocs/game.bloc.dart';
import 'package:minesweeper/pages/game.page.dart';
import 'package:minesweeper/pages/home.page.dart';
import 'package:minesweeper/themes/theme.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  Future delay(context) async {
    final bloc = Provider.of<GameBloc>(context);
    await Future.delayed(const Duration(milliseconds: 3000), () {
      bloc.select(Level.EASY);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GamePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    delay(context);
    return Scaffold(
      body: Container(
        color: const Color(0xffbcbcbc),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
                  child: Text(
                    "Minesweeper",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TickingTimebombBB',
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: buildBoxDecorationOut(),
                  width: 80,
                  height: 80,
                  child: SvgPicture.asset("assets/images/face-smile.svg"),
                ),
                Container(
                  decoration: buildBoxDecorationOut(),
                  width: 80,
                  height: 80,
                  child: SvgPicture.asset("assets/images/flag.svg"),
                ),
                Container(
                  decoration: buildBoxDecorationOut(),
                  width: 80,
                  height: 80,
                  child: SvgPicture.asset("assets/images/mine.svg"),
                ),
                Container(
                  decoration: buildBoxDecorationOut(),
                  width: 80,
                  height: 80,
                  child: SvgPicture.asset("assets/images/face-sad.svg"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
