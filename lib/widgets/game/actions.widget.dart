import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:minesweeper/blocs/game.bloc.dart';
import 'package:minesweeper/themes/theme.dart';
import 'package:provider/provider.dart';

class GameActions extends StatelessWidget {
  const GameActions({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<GameBloc>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Visibility(
        visible: (bloc.lose || bloc.win),
        maintainState: false,
        maintainAnimation: false,
        maintainSize: false,
        replacement: Container(),
        child: Container(
          decoration: buildBoxDecorationIn(),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: buildBoxDecorationOut(),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            bloc.win
                                ? "Congratulations! Restart?"
                                : bloc.lose
                                    ? "You lost! Restart?"
                                    : "Start",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'TickingTimebombBB',
                                color: bloc.win ? Colors.green : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (kDebugMode) {
                        print("clicando em restart...");
                      }
                      bloc.restart();
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
