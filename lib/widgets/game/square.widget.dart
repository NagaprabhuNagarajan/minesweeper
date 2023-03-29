import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:minesweeper/blocs/game.bloc.dart';
import 'package:minesweeper/themes/theme.dart';
import 'package:provider/provider.dart';

class Square extends StatelessWidget {
  final int? x;
  final int? y;

  const Square({
    super.key,
    @required this.x,
    @required this.y,
  });

  @override
  Widget build(BuildContext context) {
    GameBloc bloc = Provider.of<GameBloc>(context);
    var value = bloc.gridState![x!][y!];
    switch (value) {
      case empty:
        return Container(
          width: 25,
          height: 25,
          decoration: buildBoxDecorationOut(),
        );
      case opened:
        return Container(
          width: 25,
          height: 25,
          decoration: buildBoxDecorationClicked(),
        );
      case hasFlag:
        return Container(
          width: 25,
          height: 25,
          decoration: buildBoxDecorationClicked(),
          child: SvgPicture.asset("assets/images/flag.svg"),
        );
      case hasMine:
        return Container(
          width: 25,
          height: 25,
          decoration: buildBoxDecorationIn(),
          child: SvgPicture.asset("assets/images/mine.svg"),
        );
      default:
        return Container(
          width: 25,
          height: 25,
          decoration: buildBoxDecorationClicked(),
          child: Center(
            child: Text(
              "$value",
              style: TextStyle(
                fontSize: (bloc.currentLevel == Level.HARD2) ? 11 : 14,
                color: getColor(value),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
    }
  }

  getColor(value) {
    switch (value) {
      case 1:
        return const Color(0xff000051);
      case 2:
        return Colors.green;
      case 3:
        return Colors.red;
      case 4:
        return Colors.purple;
      default:
    }
  }
}
