// // ignore_for_file: avoid_print
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:minesweeper/blocs/game.bloc.dart';
// import 'package:minesweeper/blocs/game.config.dart';
// import 'package:minesweeper/pages/game.page.dart';
// import 'package:minesweeper/pages/game.page.web.dart';
// import 'package:minesweeper/themes/theme.dart';
// import 'package:minesweeper/widgets/game/app-bar.widget.dart';
// import 'package:provider/provider.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final bloc = Provider.of<GameBloc>(context);
//     return Scaffold(
//       appBar: gameAppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 220,
//               decoration: buildBoxDecorationButton(),
//               child: TextButton(
//                 onPressed: () => {
//                   print("fácil"),
//                   bloc.select(Level.EASY),
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) =>
//                           (kIsWeb) ? const GamePageWeb() : const GamePage(),
//                     ),
//                   ),
//                 },
//                 child: const Text(
//                   "Easy ($easyRows X $easyColumns)",
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'TickingTimebombBB',
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               width: 220,
//               decoration: buildBoxDecorationButton(),
//               child: TextButton(
//                 onPressed: () => {
//                   print("intermediário"),
//                   bloc.select(Level.MEDIUM),
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const GamePage(),
//                     ),
//                   ),
//                 },
//                 child: const Text(
//                   "Medium ($mediumRows X $mediumColumns)",
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'TickingTimebombBB',
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               width: 220,
//               decoration: buildBoxDecorationButton(),
//               child: TextButton(
//                 onPressed: () => {
//                   print("difícil"),
//                   bloc.select(Level.HARD),
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const GamePage(),
//                     ),
//                   ),
//                 },
//                 child: const Text(
//                   "Hard ($hardRows X $hardColumns)",
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'TickingTimebombBB',
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               width: 220,
//               decoration: buildBoxDecorationButton(),
//               child: TextButton(
//                 onPressed: () => {
//                   print("difícil2"),
//                   bloc.select(Level.HARD2),
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const GamePage(),
//                     ),
//                   ),
//                 },
//                 child: const Text(
//                   "Very Hard ($hard2Rows X $hard2Columns)",
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'TickingTimebombBB',
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
