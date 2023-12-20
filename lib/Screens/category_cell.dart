import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../category/Plants.dart';
import '../category/Seeds.dart';
import '../category/Tools.dart';
import 'Home.dart';

class CategoryCell extends StatelessWidget {
  final category;
  final onTap;
  Color c = const Color(0xFF0467a2);
  Color co = const Color(0xFFfeca38);

  CategoryCell({required this.category, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (category.title == 'All') {
          Navigator.pushNamed(context, HomePage.id);
        }
        if (category.title == 'Plants') {
          Navigator.pushNamed(context, PlantsCategory.id);
        } else if (category.title == 'Seeds') {
          Navigator.pushNamed(context, SeedsCategory.id);
        } else if (category.title == 'Tools') {
          Navigator.pushNamed(context, ToolsCategory.id);
        }
      },
      child: Container(
        width: 63,
        height: 40,
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.only(top: 14),
        decoration: BoxDecoration(
          color: const Color(0XFFF8F8F8),
          border: Border.all(
            color: const Color(0XFFF8F8F8),
            width: 3,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
