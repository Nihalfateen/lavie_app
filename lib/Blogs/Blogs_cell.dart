import 'package:flutter/material.dart';

class BlogsCell extends StatelessWidget {
  final rated;
  const BlogsCell({
    required this.rated,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        width: 160,
        height: 100,
        clipBehavior: Clip.hardEdge,
        padding: EdgeInsets.only(top: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0XFF5A5959).withOpacity(0.10),
              spreadRadius: 12,
              blurRadius: 12,
              offset: Offset(0, 30), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rated.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10))),
                  ),

                  // Positioned(
                  //   left: 16,
                  //   height: 10,
                  //   child: Icon(
                  //     category.icon,
                  //     size: 30,
                  //     color: co,
                  //   ),
                  // ),
                  //   left: 16,
                  //   child: Text(
                  //     'Specialist',
                  //     style: TextStyle(
                  //       color: co,
                  //       fontSize: 12,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
