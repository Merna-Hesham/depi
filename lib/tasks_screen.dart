import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Task1
      //  appBar: AppBar(
      //    leading: Icon(Icons.menu),
      //    title: Text('App'),
      //  ),
      //  body: Column(
      //    children: [
      //      Row(
      //        children: [
      //          Text('1'),
      //          Text('2'),
      //          Text('3'),
      //        ],
      //      ),
      //      Row(
      //        children: [
      //          Text('4'),
      //          Text('5'),
      //          Text('6'),
      //        ],
      //      ),
      //      Row(
      //        children: [
      //          Text('7'),
      //          Text('8'),
      //          Text('9'),
      //        ],
      //      ),
      //    ],
      //  ),

      // Task2
      // body: Column(
      //   children: [
      //     Expanded(
      //         child: Row(
      //           children: [
      //             Expanded(
      //                 child: Container(
      //                   color: Colors.amber,
      //                   child: Center(
      //                     child: Text('1'),
      //                   ),
      //                 ),
      //             ),
      //             Expanded(
      //               child: Container(
      //                 color: Colors.blue,
      //                 child: Center(
      //                   child: Text('2'),
      //                 ),
      //               ),
      //             ),
      //             Expanded(
      //               child: Container(
      //                 color: Colors.red,
      //                 child: Center(
      //                   child: Text('3'),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         )
      //     ),
      //     Expanded(
      //         child: Column(
      //           children: [
      //             Expanded(
      //               child: Container(
      //                 color: Colors.amber,
      //                 child: Center(
      //                   child: Text('1'),
      //                 ),
      //               ),
      //             ),
      //             Expanded(
      //               child: Container(
      //                 color: Colors.blue,
      //                 child: Center(
      //                   child: Text('2'),
      //                 ),
      //               ),
      //             ),
      //             Expanded(
      //               child: Container(
      //                 color: Colors.red,
      //                 child: Center(
      //                   child: Text('3'),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         )
      //     ),
      //   ],
      // ),

      // Task3
      backgroundColor: Colors.brown[200],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            spacing: 10,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 110,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/photo.jpeg'),
                  radius: 104,
                ),
              ),

              Text('Merna Hesham',
                style: TextStyle(
                    fontFamily: 'SlackOnChristmasDemoRegular',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),

              Text('Mobile app developer',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70
                ),
              ),

              Divider(
                color: Colors.white,
                thickness: 4,
                indent: 40,
                endIndent: 40,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 12,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_iphone,
                          size: 30,
                          color: Colors.brown[200],
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('+20 1002295678',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown[200]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail_outline_rounded,
                          size: 30,
                          color: Colors.brown[200],
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('mernahesham2003@gmail.com',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown[200]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [Image(
                        image: AssetImage('assets/images/GitHub2.jpg'),
                        width: 30,
                        height: 30,
                      ),

                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Merna-Hesham',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown[200]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
