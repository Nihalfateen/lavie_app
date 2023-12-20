import 'package:flutter/material.dart';

class PlantsCell extends StatelessWidget {
  final B1;
  PlantsCell({required this.B1});
  Color c = const Color(0xFF0467a2);
  Color co = const Color(0xFFfeca38);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => BooksDetailPage(
        //         category: B1,
        //       ),
        //     ));
      },
      child: SingleChildScrollView(
          child: Container(
        height: 500,
        width: 300,
        clipBehavior: Clip.hardEdge,
        // padding: EdgeInsets.only(top: 14, bottom: 14),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: co,
          // borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // SingleChildScrollView(

                Container(
                  height: 1000,
                  // width: 600,
                  // clipBehavior: Clip.hardEdge,
                  // padding: EdgeInsets.only(top: 14, bottom: 14),
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/Background - 2022-08-09T145931 3.png',
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Card(
                            color: c,
                            child: Text("${B1["BookName1"]}"),
                          )
                        ],
                      )
                      // Stack(
                      //   children: [
                      //     Container(
                      //       height: 30,
                      //       width: 60,
                      //       decoration: BoxDecoration(
                      //           color: c,
                      //           borderRadius: BorderRadius.only(
                      //               topRight: Radius.circular(10))),
                      //     ),
                      //
                      //     Positioned(
                      //       left: 16,
                      //       height: 10,
                      //       child: Image.network(
                      //         "${B1["Image"]}",
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //     //   left: 16,
                      //     //   child: Text(
                      //     //     'Specialist',
                      //     //     style: TextStyle(
                      //     //       color: co,
                      //     //       fontSize: 12,
                      //     //       fontWeight: FontWeight.w400,
                      //     //     ),
                      //     //   ),
                      //     // )
                      //   ],
                      // ),
                    ],
                  ),
                  // ),
                )
              ]),
        ),
      )),
    );
  }
}
