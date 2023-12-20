import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscussionForum extends StatefulWidget {
  const DiscussionForum({Key? key}) : super(key: key);
  static String id = 'discussion_forum';
  @override
  State<DiscussionForum> createState() => _DiscussionForumState();
}

class _DiscussionForumState extends State<DiscussionForum> {
  Color co = const Color(0xFF1abc00);
  Color text = const Color(0xFF6F6F6F);

  MaterialStateProperty<Color> getColor(Color color, Color pressedcolor) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return pressedcolor;
      } else {
        return color;
      }
    }

    ;
    return MaterialStateProperty.resolveWith(getColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              SafeArea(
                  child: Center(
                      child: Container(
                child: Row(children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Discussion Forums',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ]),
              ))),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: 392,
                  child: TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        fillColor: Color(0XFFF8F8F8),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFFF8F8F8),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        style: ButtonStyle(backgroundColor: getColor(text, co)),
                        onPressed: () {
                          Navigator.pushNamed(context, DiscussionForum.id);
                        },
                        child: Text('All Forums')),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(backgroundColor: getColor(text, co)),
                        onPressed: () {},
                        child: Text('My Forums')),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: <Widget>[
                        Container(
                          height: 450,
                          width: 400,
                          child: ListView.builder(
                            itemCount: 2,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, position) {
                              return Card(
                                child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image(
                                        image: AssetImage(
                                            'images/Group 1253.png'))),
                              );
                            },
                          ),
                        ),
                      ]),
                    ]),
              ),
            ])));
  }
}

Column _DiscussionSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, position) {
            return Card(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image(image: AssetImage('images/Group 1253.png'))),
            );
          },
        ),
      ),
    ],
  );
}
