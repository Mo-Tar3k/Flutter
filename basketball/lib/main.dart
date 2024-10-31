import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart'; // Import AutoSizeText

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAScore = 0;
  int teamBScore = 0;

  void addpointTeamA() {
    setState(() {
      teamAScore++;
    });
  }

  void addpointTeamB() {
    setState(() {
      teamBScore++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(
                      height: 250,
                      width: 150, // Set a fixed width for text
                      child: AutoSizeText(
                        "$teamAScore",
                        style: const TextStyle(fontSize: 150),
                        maxLines: 1,
                        minFontSize: 30, // Minimum font size to scale down to
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: addpointTeamA,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAScore += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAScore += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  width: 32,
                  child: VerticalDivider(
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(
                      height: 250,
                      width: 150, // Set a fixed width for text
                      child: AutoSizeText(
                        "$teamBScore",
                        style: const TextStyle(fontSize: 150),
                        maxLines: 1,
                        minFontSize: 30, // Minimum font size to scale down to
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: addpointTeamB,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBScore += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBScore += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          )),
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAScore = 0;
                  teamBScore = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}






















// class PointsCounter extends StatefulWidget {
//   const PointsCounter({super.key});

//   @override
//   State<PointsCounter> createState() => _PointsCounterState();
// }

// class _PointsCounterState extends State<PointsCounter> {
//   int teamAScore = 0;

//   int teamBScore = 0;

//   void addPointToTeamA() {
//     setState(() {
//       teamAScore++;
//     });
//   }

//   void addPointToTeamB() {
//     setState(() {
//       teamBScore++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Points Counter'),
//           backgroundColor: Colors.orange,
//         ),
//         body: Column(
//           children: [
//             const SizedBox(
//               height: 32,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     const Text(
//                       "Team A",
//                       style: TextStyle(fontSize: 32),
//                     ),
//                     SizedBox(
//                       height: 250,
//                       width: 150, // Set a fixed width for text
//                       child: AutoSizeText(
//                         "$teamAScore",
//                         style: const TextStyle(fontSize: 150),
//                         maxLines: 1,
//                         minFontSize: 30, // Minimum font size to scale down to
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         minimumSize: const Size(150, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(0),
//                         ),
//                       ),
//                       onPressed: addPointToTeamA,
//                       child: const Text("Add 1 Point",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                           )),
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         minimumSize: const Size(150, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(0),
//                         ),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           teamAScore += 2;
//                         });
//                       },
//                       child: const Text("Add 2 Point",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                           )),
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         minimumSize: const Size(150, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(0),
//                         ),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           teamAScore += 3;
//                         });
//                       },
//                       child: const Text("Add 3 Point",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                           )),
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 420,
//                   child: VerticalDivider(
//                     thickness: 1,
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     const Text(
//                       "Team B",
//                       style: TextStyle(fontSize: 32),
//                     ),
//                     SizedBox(
//                       height: 250,
//                       width: 150, // Set a fixed width for text
//                       child: AutoSizeText(
//                         "$teamBScore",
//                         style: const TextStyle(fontSize: 150),
//                         maxLines: 1,
//                         minFontSize: 30, // Minimum font size to scale down to
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         minimumSize: const Size(150, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(0),
//                         ),
//                       ),
//                       onPressed: addPointToTeamB,
//                       child: const Text("Add 1 Point",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                           )),
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         minimumSize: const Size(150, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(0),
//                         ),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           teamBScore += 2;
//                         });
//                       },
//                       child: const Text("Add 2 Point",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                           )),
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         minimumSize: const Size(150, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(0),
//                         ),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           teamBScore += 3;
//                         });
//                       },
//                       child: const Text("Add 3 Point",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                           )),
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 350,
//                   child: VerticalDivider(
//                     thickness: 1,
//                   ),
//                 ),
//               ],
//             ),
//             const Spacer(),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orange,
//                 minimumSize: const Size(150, 50),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(0),
//                 ),
//               ),
//               onPressed: () {
//                 setState(() {
//                   teamAScore = 0;
//                   teamBScore = 0;
//                 });
//               },
//               child: const Text("Reset Score",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,
//                   )),
//             ),
//             const Spacer()
//           ],
//         ),
//       ),
//     );
//   }
// }
