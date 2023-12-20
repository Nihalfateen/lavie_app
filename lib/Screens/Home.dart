import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Discussion%20forums/Discussion_forum1.dart';
import 'Notification.dart';
import 'Profile.dart';
import 'QR.dart';
import 'cart_screen.dart';
import 'category_cell.dart';

class HomePage extends StatefulWidget {
  static String id = "Home_screen";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> _categories = <Category>[];
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _categories = _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            animationCurve: Curves.easeInOut,
            buttonBackgroundColor: const Color(0XFF1ABC00),
            color: Colors.white,
            backgroundColor: const Color(0XFFF8F8F8),
            items: const <Widget>[
              ImageIcon(
                AssetImage("images/leave 1 (Traced).png"),
              ),
              ImageIcon(
                AssetImage("images/qr-code-scan 1 (Traced).png"),
              ),
              ImageIcon(
                AssetImage("images/Home.png"),
              ),
              ImageIcon(
                AssetImage("images/Group 2120.png"),
              ),
              ImageIcon(
                AssetImage("images/Group (1).png"),
              )
            ],
            onTap: (index) => setState(() {
                  {
                    if (index == 0) {
                      Navigator.pushNamed(context, DiscussionForum.id);
                    } else if (index == 1) {
                      Navigator.pushNamed(context, Qr.id);
                    } else if (index == 2) {
                      Navigator.pushNamed(context, HomePage.id);
                    } else if (index == 3) {
                      Navigator.pushNamed(context, NOTIFICATION.id);
                    } else if (index == 4) {
                      Navigator.pushNamed(context, Profile.id);
                    }
                    _page = index;
                    // debugPrint('current index is $index');
                  }
                }
                    // onTap: (index) {
                    //   setState(() {
                    //     _page = index;
                    //   });
                    // },
                    )),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
          Center(
            child: SizedBox(
              height: 100,
              child: Image.asset("images/lavie.png"),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _PlantSectionSearch(),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, CartScreen.id);
                    },
                    child: Container(
                      height: 46,
                      width: 51,
                      decoration: BoxDecoration(
                          color: Color(0XFF1ABC00),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('images/Cart(1).png'),
                    )),
              ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _categorySection(),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: <Widget>[
                  Center(
                      child: SizedBox(
                          height: 227,
                          width: 176,
                          child: GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(context, Schoolpage.id);
                              },
                              child: Stack(children: <Widget>[
                                Container(
                                  height: 227,
                                  width: 176,
                                  margin: const EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFF8F8F8),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(children: [
                                          Positioned(
                                            width: 82,
                                            height: 164,
                                            left: 42,
                                            top: 253,
                                            child: Image.asset(
                                              'images/Background - 2022-08-09T145931 3.png',
                                              height: 100,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Positioned(
                                            height: 16,
                                            width: 16,
                                            left: 138,
                                            top: 338,
                                            child: Image.asset(
                                              'images/minus (1) 2.png',
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Positioned(
                                            height: 19,
                                            width: 10,
                                            left: 161,
                                            top: 334,
                                            child: Image.asset(
                                              'images/1.png',
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Positioned(
                                            height: 8,
                                            width: 8,
                                            left: 182,
                                            top: 342,
                                            child: Image.asset(
                                              'images/plus (1) 3.png',
                                            ),
                                          ),
                                        ]),
                                        Positioned(
                                          child: Text(
                                            'GARDENIA PLANT',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 65),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Positioned(
                                                  child: Text(
                                                    '70 EGP',
                                                    style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 148,
                                          decoration: BoxDecoration(
                                            color: const Color(0XFF1ABC00),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            'Add To Cart',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                              ])))),
                  Center(
                      child: SizedBox(
                          height: 227,
                          width: 176,
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.pushNamed(context, Nurserypage.id);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: const Color(0XFFF8F8F8),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(children: [
                                      Positioned(
                                        width: 82,
                                        height: 164,
                                        left: 42,
                                        top: 253,
                                        child: Image.asset(
                                          'images/Lovepik_com-401306819-plant-pot.png',
                                          height: 100,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Positioned(
                                        height: 16,
                                        width: 16,
                                        left: 138,
                                        top: 338,
                                        child: Image.asset(
                                          'images/minus (1) 2.png',
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Positioned(
                                        height: 19,
                                        width: 10,
                                        left: 161,
                                        top: 334,
                                        child: Image.asset(
                                          'images/1.png',
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Positioned(
                                        height: 8,
                                        width: 8,
                                        left: 182,
                                        top: 342,
                                        child: Image.asset(
                                          'images/plus (1) 3.png',
                                        ),
                                      ),
                                    ]),
                                    Positioned(
                                      child: Text(
                                        'GARDENIA PLANT',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 65),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Positioned(
                                              child: Text(
                                                '70 EGP',
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 148,
                                      decoration: BoxDecoration(
                                        color: const Color(0XFF1ABC00),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Add To Cart',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          )))
                ],
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: <Widget>[
                  Center(
                      child: SizedBox(
                          height: 227,
                          width: 176,
                          child: GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(context, Schoolpage.id);
                              },
                              child: Container(
                                margin: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  color: const Color(0XFFF8F8F8),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(children: [
                                        Positioned(
                                          width: 82,
                                          height: 164,
                                          left: 42,
                                          top: 253,
                                          child: Image.asset(
                                            'images/Lovepik_com-401501120-cute-indoor-plants-illustration-image.png',
                                            height: 100,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Positioned(
                                          height: 16,
                                          width: 16,
                                          left: 138,
                                          top: 338,
                                          child: Image.asset(
                                            'images/minus (1) 2.png',
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Positioned(
                                          height: 19,
                                          width: 10,
                                          left: 161,
                                          top: 334,
                                          child: Image.asset(
                                            'images/1.png',
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Positioned(
                                          height: 8,
                                          width: 8,
                                          left: 182,
                                          top: 342,
                                          child: Image.asset(
                                            'images/plus (1) 3.png',
                                          ),
                                        ),
                                      ]),
                                      Positioned(
                                        child: Text(
                                          'SPIDER PLANT',
                                          style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 45),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Positioned(
                                                child: Text(
                                                  '190 EGP',
                                                  style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 148,
                                        decoration: BoxDecoration(
                                          color: const Color(0XFF1ABC00),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          'Add To Cart',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ]),
                              )))),
                  PlantsProducts(
                      plantimage1:
                          'images/Lovepik_com-401568628-decorative-potted-plant-element-png.png',
                      image2: 'images/minus (1) 2.png',
                      plantname: 'GARDENIA Plant',
                      plantprice: '70 EGP')
                ],
              ),
            ]),
          ),
        ])));
  }

  Row _PlantSectionSearch() {
    return Row(children: [
      SizedBox(
        width: 329,
        child: TextFormField(
          onTap: () {
            showSearch(
              context: context,
              delegate: PlantSearch(),
            );
          },
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
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
        ),
      )
    ]);
  }

  Column _categorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
          child: ListView.separated(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(indent: 16),
              itemBuilder: (BuildContext context, int index) => CategoryCell(
                    category: _categories[index],
                  )),
        ),
      ],
    );
  }

  List<Category> _getCategories() {
    List<Category> categories = <Category>[];
    categories.add(Category(
      title: 'All',
    ));
    categories.add(Category(
      title: 'Plants',
    ));

    categories.add(Category(
      title: 'Seeds',
    ));
    categories.add(Category(
      icon: FontAwesomeIcons.headSideVirus,
      title: 'Tools',
    ));
    return categories;
  }
}

class PlantSearch extends SearchDelegate {
  final recentPlant = ['gardenia plant', 'snake plant', 'gardenia plant'];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear),
        )
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () {
          close(context, Null);
        },
        icon: const Icon(Icons.arrow_back),
      );

  @override
  Widget buildResults(BuildContext context) {
    List matchQuery = [];
    for (var plants in recentPlant) {
      if (plants.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(plants);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List matchQuery = [];
    for (var plants in recentPlant) {
      if (plants.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(plants);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}

class Category {
  final icon;
  final String title;
  final image;

  Category({this.icon, required this.title, this.image});
}

class PlantsProducts extends StatelessWidget {
  final plantimage1;
  final image2;
  final plantname;
  final plantprice;
  PlantsProducts(
      {required this.plantimage1,
      required this.image2,
      required this.plantname,
      required this.plantprice});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: 227,
            width: 176,
            child: GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, Nurserypage.id);
                },
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: const Color(0XFFF8F8F8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(children: [
                          Positioned(
                            width: 82,
                            height: 164,
                            left: 42,
                            top: 253,
                            child: Image.asset(
                              plantimage1,
                              height: 100,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Positioned(
                            height: 16,
                            width: 16,
                            left: 138,
                            top: 338,
                            child: Image.asset(
                              image2,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Positioned(
                            height: 19,
                            width: 10,
                            left: 161,
                            top: 334,
                            child: Image.asset(
                              'images/1.png',
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Positioned(
                            height: 8,
                            width: 8,
                            left: 182,
                            top: 342,
                            child: Image.asset(
                              'images/plus (1) 3.png',
                            ),
                          ),
                        ]),
                        Positioned(
                          child: Text(
                            plantname,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 65),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Positioned(
                                  child: Text(
                                    plantprice,
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 30,
                          width: 148,
                          decoration: BoxDecoration(
                            color: const Color(0XFF1ABC00),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Add To Cart',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                ))));
  }
}
