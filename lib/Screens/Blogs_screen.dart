import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Blogs/Blogs_cell.dart';

class BlogsScreen extends StatefulWidget {
  static String id = 'Blogs';
  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {
  List<Blog> _blog = <Blog>[];
  @override
  void initState() {
    super.initState();
    _blog = _getBlogs();
  }
  // Future getBlogs() async {
  //   var data = await http.get(Uri.parse(
  //       "https://lavie.orangedigitalcenteregypt.com/api/v1/products/blogs"));
  //   var jsonData = jsonDecode(data.body);
  //   List<Blogs> blogs = [];
  //   for (var b in jsonData) {
  //     Blogs blog = Blogs(
  //         plantId: 'plantId',
  //         sunLight: 'sunLight',
  //         waterCapacity: 'waterCapacity',
  //         description: 'description',
  //         name: 'name',
  //         imageUrl: 'imageUrl',
  //         temperature: 'temperature');
  //     blogs.add(blog);
  //   }
  //   print(blogs.length);
  //   return blogs;
  // }
  //
  //
  //
  // void _getblogs() async {
  //   try {
  //     var response = await Dio().post(
  //         'https://lavie.orangedigitalcenteregypt.com/api/v1/products/blogs',
  //         data: {
  //           'plantId': 'plantId',
  //           'sunLight': 'sunLight',
  //           'waterCapacity': 'waterCapacity',
  //           'description': 'description',
  //           'name': 'name',
  //           'imageUrl': 'imageUrl',
  //           'temperature': 'temperature'
  //         });
  //     print(response);
  //     // print(response.data['data']['accessToken']);
  //     // PreferenceUtils.setString(
  //     //     SharedKeys.apiToken, response.data['data']['accessToken']);
  //   } on DioError catch (e) {
  //     print(e.response);
  //     print(e.response!.data['message'][0]);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                    width: 150,
                  ),
                  Text(
                    'Blogs',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ]),
              ))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        child: ListView.separated(
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: _blog.length,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(indent: 16),
                            itemBuilder: (BuildContext context, int index) =>
                                BlogsCell(
                                  rated: _blog[index],
                                )),
                      ),
                    ]),
              ),
            ])));
  }

  List<Blog> _getBlogs() {
    List<Blog> blog = <Blog>[];
    blog.add(Blog(
      title: '',
      image: Image.asset('images/Rectangle 15 (1).png'),
    ));
    blog.add(Blog(
      title: '',
      image: Image.asset('images/Mask group (1).png'),
    ));
    blog.add(Blog(
      title: '',
      image: Image.asset('images/Mask group (1).png'),
    ));
    blog.add(Blog(
      title: '',
      image: Image.asset('images/Mask group.png'),
    ));

    return blog;
  }
}

class Blogs {
  String? plantId;
  String? name;
  String? description;
  String? imageUrl;
  String? waterCapacity;
  String? sunLight;
  String? temperature;
  Blogs(
      {required this.plantId,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.waterCapacity,
      required this.sunLight,
      required this.temperature});
}

class Blog {
  final String title;
  final image;

  Blog({required this.title, required this.image});
}
