import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isFavorite1 = false;
  bool _isFavorite2 = false;
  bool _isFavorite3 = false;
  bool _isFavorite4 = false;
  bool _isFavorite5 = false;
  bool _isFavorite6 = false;
  bool _isFavorite7 = false;
  bool _isClicked1 = false;
  bool _isClicked2 = false;
  bool _isClicked3 = false;
  bool _isClicked4 = false;
  bool _isClicked5 = false;
  bool _isClicked6 = false;
  bool _isClicked7 = false;
  bool _isClicked8 = false;
  bool _isClicked9 = false;
  bool _isClicked10 = false;
  bool _isClicked11 = false;
  bool _isClicked12 = false;
  // XFile? _image;
  // final int _selectedIndex = -1;
  int index = 0;

  // Future<void> pickImageFromGallery() async {
  //   final ImagePicker picker = ImagePicker();
  //   final XFile? pickedImage = await picker.pickImage(
  //     source: ImageSource.gallery,
  //     imageQuality: 80,
  //   );
  //   if (pickedImage != null) {
  //     setState(() {
  //       _image = pickedImage;
  //     });
  //   }
  // }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.45,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.39,
                    color: const Color(0xffFFFFFF),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 300),
                          child: TextButton(
                            onPressed: () {
                              // Close the current bottom sheet
                              Navigator.pop(context);

                              Future.delayed(Duration.zero, () {
                                _showBottomSheetReport(context);
                              });
                            },
                            child: const Text(
                              'Report',
                              style: TextStyle(
                                color: Color(0xff898B8A),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'falcao8000',
                          style: TextStyle(
                              color: Color(0xff212020),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        const Text(
                          'falcao8000',
                          style: TextStyle(
                              color: Color(0xff898B8A),
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        const Text(
                          'join my livestream everyday',
                          style: TextStyle(
                              color: Color(0xff898B8A),
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        Container(
                            width: constraints.maxWidth,
                            height: constraints.maxHeight * 0.08,
                            color: const Color(0xffFFFFFF),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '583',
                                      style: TextStyle(
                                          color: Color(0xff212020),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'Following',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff898B8A)),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '921.8K',
                                      style: TextStyle(
                                          color: Color(0xff212020),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'Followers',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff898B8A)),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '19.6M',
                                      style: TextStyle(
                                          color: Color(0xff212020),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'Likes',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff898B8A)),
                                    )
                                  ],
                                )
                              ],
                            )),
                        Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight * 0.08,
                          color: const Color(0xffFFFFFF),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.48,
                                height: constraints.maxHeight * 0.08,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10), // Change the radius here
                                    ),
                                  ),
                                  child: const Text('@'),
                                ),
                              ),
                              SizedBox(
                                width: constraints.maxWidth * 0.48,
                                height: constraints.maxHeight * 0.08,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff3F3BFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10), // Change the radius here
                                    ),
                                  ),
                                  child: const Text(
                                    'Follow',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 136),
                  child: Container(
                    height: constraints.maxHeight * 0.1,
                    width: constraints.maxWidth * 0.3,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/dp.jpg')),
                        border: Border.all(
                          color: const Color(0xffFFFFFF),
                          width: 2,
                        ),
                        color: Colors.black,
                        shape: BoxShape.circle),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showBottomSheet1(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.54,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Spacer(flex: 3),
                      const Text(
                        'Top viewrs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff171724),
                            fontSize: 18),
                      ),
                      const Spacer(flex: 2),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3, right: 15),
                        child: Container(
                          height: constraints.maxHeight * 0.07,
                          width: constraints.maxWidth * 0.07,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xffFFFFFF),
                            border: Border.all(
                              color: const Color(0xff171724),
                              width: 2,
                            ),
                          ),
                          child: const Center(
                              child: Text(
                            '!',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Top viewrs',
                          style: TextStyle(
                              color: Color(0xff898B8A),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Spacer(),
                        Image(image: AssetImage('assets/coin.jpg')),
                        Text(
                          'coinss',
                          style: TextStyle(
                              color: Color(0xff898B8A),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.264,
                    color: const Color(0xffFFFFFF),
                    child: ListView(
                      children: const [
                        ListTile(
                          leading: Image(image: AssetImage('assets/ava1.jpg')),
                          title: Text(
                            "sompermobile535",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          leading: Image(image: AssetImage('assets/avav2.jpg')),
                          title: Text(
                            "decoheartpink",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          leading: Image(image: AssetImage('assets/ava3.jpg')),
                          title: Text(
                            "karenjoydelcaruz8",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          leading: Image(image: AssetImage('assets/ava.jpg')),
                          title: Text(
                            "johnmobbin",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /////////////////////////
                  ///////////////////pading
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      height: constraints.maxHeight * 0.12,
                      width: constraints.maxWidth,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffE3E3E3),
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]),
                      child: Center(
                        child: ListTile(
                          leading:
                              const Image(image: AssetImage('assets/ava.jpg')),
                          title: const Text(
                            "johnmobbin",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text(
                            '0 coins',
                            style: TextStyle(color: Color(0xff8B8B8B)),
                          ),
                          trailing: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  backgroundColor: const Color(0xff3F3BFF)),
                              onPressed: () {},
                              child: const Text(
                                "Gift",
                                style: TextStyle(color: Color(0xffFFFFFF)),
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetQ(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.75,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const Spacer(flex: 3),
                        const Text(
                          'falcao...’s Q&A',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff171724),
                              fontSize: 18),
                        ),
                        const Spacer(flex: 2),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3, right: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Color(0xff171724),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.553,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    child: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return ListView(
                        children: [
                          StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return ListTile(
                              leading: const Image(
                                  image: AssetImage('assets/img1.jpg')),
                              title: const Text(
                                'letsgrow_poyoxapoyg',
                                style: TextStyle(
                                    color: Color(0xff89898B), fontSize: 12),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'grow together',
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: constraints.minHeight * 0.05,
                                  ),
                                  Container(
                                    height: constraints.maxHeight * 0.0279,
                                    width: constraints.maxWidth * 0.27,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff3F3BFF),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.signal_cellular_alt,
                                          color: Color(0xffFFFFFF),
                                          size: 15,
                                        ),
                                        Text(
                                          'Discussing',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  _isFavorite1
                                      ? Icons.favorite
                                      : Icons.favorite_outline,
                                  color: _isFavorite1
                                      ? const Color(0xff3F3BFF)
                                      : const Color(0xffB6B5B5),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isFavorite1 = !_isFavorite1;
                                  });
                                },
                              ),
                            );
                          }),
                          ListTile(
                            leading: const Image(
                                image: AssetImage('assets/img2.jpg')),
                            title: const Text(
                              'johnmobbin',
                              style: TextStyle(
                                color: Color(0xff89898B),
                                fontSize: 12,
                              ),
                            ),
                            subtitle: const Text(
                              'How to peel an egg?',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                _isFavorite2
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: _isFavorite2
                                    ? const Color(0xff3F3BFF)
                                    : const Color(0xffB6B5B5),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isFavorite2 = !_isFavorite2;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: const Image(
                                image: AssetImage('assets/img3.jpg')),
                            title: const Text(
                              'luzsarl17',
                              style: TextStyle(
                                  color: Color(0xff89898B), fontSize: 12),
                            ),
                            subtitle: const Text(
                              'omg',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                _isFavorite3
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: _isFavorite3
                                    ? const Color(0xff3F3BFF)
                                    : const Color(0xffB6B5B5),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isFavorite3 = !_isFavorite3;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: const Image(
                                image: AssetImage('assets/img4.jpg')),
                            title: const Text(
                              'blessed_nzoz',
                              style: TextStyle(
                                  color: Color(0xff89898B), fontSize: 12),
                            ),
                            subtitle: const Text(
                              'who wants followers',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                _isFavorite4
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: _isFavorite4
                                    ? const Color(0xff3F3BFF)
                                    : const Color(0xffB6B5B5),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isFavorite4 = !_isFavorite4;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: const Image(
                                image: AssetImage('assets/img5.jpg')),
                            title: const Text(
                              'anandavalencia1234',
                              style: TextStyle(
                                  color: Color(0xff89898B), fontSize: 12),
                            ),
                            subtitle: const Text(
                              'gooooooooooooooooooo',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                _isFavorite5
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: _isFavorite5
                                    ? const Color(0xff3F3BFF)
                                    : const Color(0xffB6B5B5),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isFavorite5 = !_isFavorite5;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: const Image(
                                image: AssetImage('assets/img6.jpg')),
                            title: const Text(
                              'nevaeh1902',
                              style: TextStyle(
                                  color: Color(0xff89898B), fontSize: 12),
                            ),
                            subtitle: const Text(
                              'cool',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                _isFavorite7
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: _isFavorite7
                                    ? const Color(0xff3F3BFF)
                                    : const Color(0xffB6B5B5),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isFavorite7 = !_isFavorite7;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: const Image(
                                image: AssetImage('assets/img7.jpg')),
                            title: const Text(
                              'nerfidex_official',
                              style: TextStyle(
                                  color: Color(0xff89898B), fontSize: 12),
                            ),
                            subtitle: const Text(
                              'Grow together',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                _isFavorite6
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: _isFavorite6
                                    ? const Color(0xff3F3BFF)
                                    : const Color(0xffB6B5B5),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isFavorite6 = !_isFavorite6;
                                });
                              },
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                  /////////////////////////
                  ///////////////////pading
                  Container(
                    height: constraints.maxHeight * 0.1,
                    width: constraints.maxWidth,
                    decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffE3E3E3),
                              spreadRadius: 1,
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: SizedBox(
                        width: constraints.maxWidth * 0.5,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);

                            Future.delayed(Duration.zero, () {
                              _showBottomSheetAskquestion(context);
                            });
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.live_help_outlined,
                                  color: Color(0xff181624)),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "Ask a question",
                                style: TextStyle(
                                    color: Color(0xff181624),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetG(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff26241E), // First color
                    Color(0xff343432), // Second color
                    Color(0xff26231A), // Third color
                  ],
                  begin: Alignment.topLeft, // Start gradient from the top-left
                  end:
                      Alignment.bottomRight, // End gradient at the bottom-right
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: constraints.maxHeight * 0.37,
                    width: constraints.maxWidth,
                    color: Colors.transparent,
                    child: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return ListView(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: constraints.maxHeight * 0.16,
                                width: constraints.maxWidth * 0.25,
                                decoration: BoxDecoration(
                                    color: _isClicked1
                                        ? Colors.blue.withOpacity(0.3)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isClicked1 = !_isClicked1;
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: constraints.maxHeight * 0.015,
                                        width: constraints.maxWidth * 0.12,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff3F3BFF),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Text(
                                          'Special',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: constraints.maxHeight * 0.07,
                                          width: constraints.maxWidth * 0.15,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image:
                                                  AssetImage('assets/gift.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 22),
                                        child: Text(
                                          'For You',
                                          style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 9,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: constraints.maxWidth * 0.25,
                                          height: constraints.maxHeight * 0.05,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff3F3BFF),
                                            borderRadius: BorderRadius.vertical(
                                              bottom: Radius.circular(10),
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'View',
                                              style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked2
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked2 = !_isClicked2;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk1.png')),
                                    Text(
                                      'Rose',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked3
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked3 = !_isClicked3;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk2.png')),
                                    Text(
                                      'Barbie',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked4
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked4 = !_isClicked4;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk3.png')),
                                    Text(
                                      'Finger Heart',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked5
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked5 = !_isClicked5;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk4.png')),
                                    Text(
                                      'perfume',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '20',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked6
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked6 = !_isClicked6;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk5.png')),
                                    Text(
                                      'Treassure Box',
                                      style: TextStyle(
                                          color: Color(0xffD8D7D7),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        // Image(
                                        //     image:
                                        //         AssetImage('assets/iconsmall.png')),
                                        // Text(
                                        //   '1',
                                        //   style: TextStyle(
                                        //       color: Color(0xffFFFFFF), fontSize: 9),
                                        // ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked7
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked7 = !_isClicked7;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk6.png')),
                                    Text(
                                      'Treassure Box',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '9',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked8
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked8 = !_isClicked8;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk7.png')),
                                    Text(
                                      'Dessert cart',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '199',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked9
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked9 = !_isClicked9;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk8.png')),
                                    Text(
                                      'Biscuits',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '50',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked10
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked10 = !_isClicked10;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(image: AssetImage('assets/stk9.png')),
                                    Text(
                                      'Alien',
                                      style: TextStyle(
                                          color: Color(0xffD8D7D7),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '111',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked11
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked11 = !_isClicked11;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(
                                        image: AssetImage('assets/stk10.png')),
                                    Text(
                                      'Cap',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '30',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: _isClicked12
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked12 = !_isClicked12;
                                  });
                                },
                                child: const Column(
                                  children: [
                                    Image(
                                        image: AssetImage('assets/stk11.png')),
                                    Text(
                                      'King',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 9),
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/iconsmall.png')),
                                        Text(
                                          '250',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 9),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ]);
                    }),
                  ),
                  Expanded(
                    child: Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight *
                          0.5, // Specify a height if needed
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff353431), // First color
                            Color(0xff26231A), // Second color
                          ],
                          begin: Alignment
                              .topLeft, // Start gradient from the top-left
                          end: Alignment
                              .bottomRight, // End gradient at the bottom-right
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Image(
                                image: AssetImage('assets/iconlarge.png')),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);

                                Future.delayed(Duration.zero, () {
                                  _showBottomSheetGiftRecharge(context);
                                });
                              },
                              child: const Text(
                                'Recharge',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFFFFFF),
                                    fontSize: 18),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Color(0xff92908C),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetS(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.5,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const Spacer(flex: 3),
                        const Text(
                          'Send to',
                          style: TextStyle(
                              color: Color(0xff171724),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(flex: 2),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3, right: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Color(0xff171724),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);

                          Future.delayed(Duration.zero, () {
                            _showBottomSheetjohnmobbin(context);
                          });
                        },
                        child: const Column(
                          children: [
                            Image(image: AssetImage('assets/john.png')),
                            Text(
                              'johnmobbin',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff000000)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xffF1F1F1),
                            radius: 28,
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                          Text(
                            'More',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff6D83F6),
                            radius: 25,
                            child: Image(image: AssetImage('assets/link.png')),
                          ),
                          Text(
                            'Copy link',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff6BD878),
                            radius: 25,
                            child: Image(image: AssetImage('assets/sms.png')),
                          ),
                          Text(
                            'SMS',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff56BCEE),
                            radius: 25,
                            child: Image(image: AssetImage('assets/email.png')),
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('assets/fb.png')),
                          Text(
                            'Facebook',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff5F9BF9),
                            radius: 25,
                            child: Icon(
                              Icons.more_horiz_rounded,
                              color: Color(0xffFFFFFF),
                              size: 30,
                            ),
                          ),
                          Text(
                            'Other',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          CircleAvatar(
                              backgroundColor: Color(0xffD9D9D9),
                              radius: 25,
                              child:
                                  Image(image: AssetImage('assets/flag.png'))),
                          Text(
                            'Report',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xffD9D9D9),
                            radius: 25,
                            child: Container(
                              height: constraints.maxHeight * 0.07,
                              width: constraints.maxWidth * 0.07,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffD9D9D9),
                                border: Border.all(
                                  color: const Color(0xff171724),
                                  width: 2,
                                ),
                              ),
                              child: const Center(
                                  child: Text(
                                '!',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          const Text(
                            'Feedback',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                      const Column(
                        children: [
                          CircleAvatar(
                              backgroundColor: Color(0xffD9D9D9),
                              radius: 25,
                              child: Image(
                                  image: AssetImage('assets/setting.png'))),
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                      const Column(
                        children: [
                          CircleAvatar(
                              backgroundColor: Color(0xffD9D9D9),
                              radius: 25,
                              child: Image(
                                  image: AssetImage('assets/display.png'))),
                          Text(
                            'Clear display',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(110, 110, 110, 1)),
                          )
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetReport(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.54,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const Spacer(flex: 3),
                        const Text(
                          'Report LIVE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff171724),
                              fontSize: 18),
                        ),
                        const Spacer(flex: 2),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3, right: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Color(0xff171724),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'Please select a reason',
                      style: TextStyle(color: Color(0xff8B8C8E), fontSize: 14),
                    ),
                  ),
                  ListTile(
                    leading: const Text(
                      'Violent extremism',
                      style: TextStyle(color: Color(0xff1E1E1E), fontSize: 15),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pop(context);

                        Future.delayed(Duration.zero, () {
                          _showBottomSheetReportLive(context);
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff8F8F8F),
                        size: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Text(
                      'Hateful behavior',
                      style: TextStyle(color: Color(0xff1E1E1E), fontSize: 15),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pop(context);

                        Future.delayed(Duration.zero, () {
                          _showBottomSheetReportLive(context);
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff8F8F8F),
                        size: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Text(
                      'Illegal activites and regulated goods',
                      style: TextStyle(color: Color(0xff1E1E1E), fontSize: 15),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pop(context);

                        Future.delayed(Duration.zero, () {
                          _showBottomSheetReportLive(context);
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff8F8F8F),
                        size: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Text(
                      'Frauds and scams',
                      style: TextStyle(color: Color(0xff1E1E1E), fontSize: 15),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pop(context);

                        Future.delayed(Duration.zero, () {
                          _showBottomSheetReportLive(context);
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff8F8F8F),
                        size: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Text(
                      'Violent and graphic content',
                      style: TextStyle(color: Color(0xff1E1E1E), fontSize: 15),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pop(context);

                        Future.delayed(Duration.zero, () {
                          _showBottomSheetReportLive(context);
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff8F8F8F),
                        size: 15,
                      ),
                    ),
                  ),

                  /////////////////////////
                  ///////////////////pading
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetReportLive(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.56,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const Spacer(flex: 3),
                        const Text(
                          'Report LIVE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff171724),
                              fontSize: 18),
                        ),
                        const Spacer(flex: 2),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3, right: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Color(0xff171724),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'Provide details to help us understand the problem',
                      style: TextStyle(color: Color(0xff8B8C8E), fontSize: 13),
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight * 0.14,
                    width: constraints.maxWidth * 0.93,
                    color: const Color(0xffFFFFFF),
                    child: const TextField(
                      maxLength: 200,
                      style: TextStyle(color: Color(0xff8B8C8E)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  //////////////
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: constraints.maxHeight * 0.08,
                          width: constraints.maxWidth * 0.15,
                          decoration: const BoxDecoration(
                              color: Color(0xffF1F1F1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton(
                            onPressed: () {
                              // pickImageFromGallery();
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.image_outlined,
                                  color: Color(0xff8B8C8E),
                                  size: 30,
                                ),
                                Text(
                                  '0/4',
                                  style: TextStyle(
                                      color: Color(0xff8B8C8E), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight * 0.08,
                        width: constraints.maxWidth * 0.15,
                        decoration: const BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        // child: _image != null
                        //     ? Image.file(
                        //         File(
                        //           _image!.path,
                        //         ),
                        //         fit: BoxFit.cover,
                        //       )
                        //     : const Icon(Icons.image, size: 50),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'If someone you know is in immidiate physical gander,contact local law enforcement away.',
                      style: TextStyle(color: Color(0xff8B8C8E), fontSize: 14),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: constraints.maxHeight * 0.05,
                      width: constraints.maxWidth * 0.94,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff3F3BFF),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(1))),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Color(0xffFFFFFF)),
                          )),
                    ),
                  ),
                  /////////////////////////
                  ///////lis////////////pading
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetAskquestion(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.75,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(5),
                  //   child: Row(
                  //     children: [
                  //       const Spacer(flex: 3),
                  //       const Icon(Icons.live_help_outlined,
                  //           color: Color(0xff3F3BFF)),
                  //       const Spacer(flex: 2),
                  //       Padding(
                  //         padding: const EdgeInsets.only(bottom: 3, right: 15),
                  //         child: IconButton(
                  //           onPressed: () {
                  //             Navigator.pop(context);
                  //           },
                  //           icon: const Icon(
                  //             Icons.close,
                  //             color: Color(0xff171724),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const Text(
                  //   'falcao...’s Q&A',
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       color: Color(0xff171724),
                  //       fontSize: 18),
                  // ),

                  Container(
                    height: constraints.maxHeight * 0.12,
                    width: constraints.maxWidth,
                    decoration: const BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              const Spacer(flex: 3),
                              const Icon(Icons.live_help_outlined,
                                  color: Color(0xff3F3BFF)),
                              const Spacer(flex: 2),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 3, right: 15),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Color(0xff171724),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'falcao...’s Q&A',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff171724),
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),

                  const ListTile(
                    leading: Image(image: AssetImage('assets/ask.png')),
                    title: Text('johnmobbin'),
                    subtitle: TextField(
                      cursorColor: Color(0xff3F3BFF),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 130, left: 220),
                    child: SizedBox(
                      height: constraints.maxHeight * 0.04,
                      width: constraints.maxWidth * 0.28,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff3F3BFF),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(1))),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Color(0xffFFFFFF)),
                          )),
                    ),
                  ) /////////////////////////
                  ///////////////////pading
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetGiftRecharge(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.66,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: constraints.maxWidth * 0.3,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Text(
                          'Welcome pack',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff171724),
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.22,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: Icon(
                            Icons.close,
                            color: Color(0xff171724),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '     Here’s a reward for your first purchase of coins.',
                    style: TextStyle(color: Color(0xff8B8C8E), fontSize: 15),
                  ),
                  const Text(
                    '     Thanks for suppoering your host!',
                    style: TextStyle(color: Color(0xff8B8C8E), fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(),
                  ),

                  const ListTile(
                    leading: Image(image: AssetImage('assets/icondouble.png')),
                    title: Row(
                      children: [
                        Text(
                          '65 coins +',
                          style: TextStyle(
                              color: Color(0xff545356),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          '45 extra',
                          style: TextStyle(
                              color: Color(0xff3F3BFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ],
                    ),
                    subtitle: Text(
                      'First-time gifters get extra coins',
                      style: TextStyle(color: Color(0xff909193), fontSize: 14),
                    ),
                  ),
                  const ListTile(
                    leading: Image(image: AssetImage('assets/gift2.png')),
                    title: Text(
                      '80% off of a unique gift',
                      style: TextStyle(
                          color: Color(0xff545356),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stand out by sending a unique gift',
                          style:
                              TextStyle(color: Color(0xff909193), fontSize: 14),
                        ),
                        Text(
                          '(valid for 24 hours)',
                          style:
                              TextStyle(color: Color(0xff909193), fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.12,
                  ),

                  SizedBox(
                    height: constraints.maxHeight * 0.055,
                    width: constraints.maxWidth * 0.84,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff3F3BFF),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(1))),
                        onPressed: () {
                          Navigator.pop(context);

                          Future.delayed(Duration.zero, () {
                            _showBottomSheetGetgift(context);
                          });
                        },
                        child: const Text(
                          'Get gift pack fir \$0.99',
                          style: TextStyle(color: Color(0xffFFFFFF)),
                        )),
                  ),
                  /////////////////////
                  ///////lis////////////pading
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetGetgift(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.5,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'App Store',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff171724),
                              fontSize: 20),
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Color(0xff3977E3)),
                            )),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image(image: AssetImage('assets/logo.png')),
                      title: Row(
                        children: [
                          Text(
                            '65 coins',
                            style: TextStyle(
                                color: Color(0xff010101),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '12+',
                            style: TextStyle(
                                backgroundColor: Color(0xffA29F9F),
                                fontSize: 7),
                          )
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TikTok',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff7A7A7A)),
                          ),
                          Text(
                            'In-App Purchase',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff7A7A7A)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Text(
                      'ACCOUNT',
                      style: TextStyle(color: Color(0xff7A7A7A), fontSize: 14),
                    ),
                    title: Container(
                      width: constraints.maxWidth * 0.1,
                      height: constraints.maxWidth * 0.08,
                      decoration: const BoxDecoration(
                          color: Color(0xffBCBCBC),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const TextField(
                        cursorHeight: 17,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 17, left: 9),
                          hintStyle:
                              TextStyle(color: Color(0xff8C8888), fontSize: 13),
                        ),
                      ),
                    ),
                    trailing: SizedBox(
                      width: constraints.maxWidth * 0.2,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: SizedBox(
                      width: constraints.maxWidth * 0.18,
                    ),
                    title: const Text(
                      'PRICE',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 11,
                      ),
                    ),
                    trailing: const Text(
                      'US\$0.99',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff000000)),
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3478F5)),
                      onPressed: () {
                        Navigator.pop(context);

                        Future.delayed(Duration.zero, () {
                          _showBottomSheetpurchase(context);
                        });
                      },
                      child: const Text(
                        'Purchase',
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ))
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetpurchase(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.7,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'App Store',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff171724),
                              fontSize: 20),
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Color(0xff3977E3)),
                            )),
                      ],
                    ),
                  ),
                  const Text(
                    'Sign in with Apple iD',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff171724),
                        fontSize: 20),
                  ),
                  const Text(
                    'Enter the password for ',
                    style: TextStyle(color: Color(0xff000000)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.36,
                        height: constraints.maxHeight * 0.04,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffCFCFCF), // First color
                              Color(0xffBCBCBC), // Second color
                            ],
                            stops: [
                              1 / 7,
                              1 / 7
                            ], // Define the stop point for the first color (1/7th of the container)
                            begin: Alignment
                                .centerLeft, // Start from the left side
                            end: Alignment.centerRight, // End at the right side
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: const TextField(
                          cursorHeight: 18,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(bottom: 15, left: 10),
                            hintStyle: TextStyle(
                                color: Color(0xff8C8888), fontSize: 13),
                          ),
                        ),
                      ),
                      const Text(
                        'to authorize this',
                        style: TextStyle(color: Color(0xff000000)),
                      )
                    ],
                  ),
                  const Text(
                    'transaction',
                    style: TextStyle(color: Color(0xff000000)),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.68,
                    height: constraints.maxHeight * 0.045,
                    decoration: const BoxDecoration(
                      color: Color(0xffB1B1B3),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        contentPadding: EdgeInsets.only(bottom: 9, left: 9),
                        hintStyle:
                            TextStyle(color: Color(0xff8C8888), fontSize: 13),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3478F5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pop(context);

                        Future.delayed(Duration.zero, () {
                          _showBottomSheetGetgiftsignin(context);
                        });
                      },
                      child: const Text(
                        'Purchase',
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      )),
                  SizedBox(
                    height: constraints.maxHeight * 0.37,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetjohnmobbin(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.5,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const Spacer(flex: 3),
                        const Text(
                          'Send to',
                          style: TextStyle(
                              color: Color(0xff171724),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(flex: 2),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3, right: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Color(0xff171724),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);

                          Future.delayed(Duration.zero, () {
                            _showBottomSheetjohnmobbin(context);
                          });
                        },
                        child: const Column(
                          children: [
                            Image(image: AssetImage('assets/john.png')),
                            Text(
                              'johnmobbin',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff000000)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xffF1F1F1),
                            radius: 28,
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                          Text(
                            'More',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E6E6E)),
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  const ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write a message...',
                          hintStyle: TextStyle(color: Color(0xff8B8989))),
                    ),
                    trailing: Image(image: AssetImage('assets/johndp.png')),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('🥰'),
                      Text('👍'),
                      Text('😂'),
                      Text('😎'),
                      Text('🥺'),
                      Text('👌')
                    ],
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.06,
                    width: constraints.maxWidth * 0.85,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff3F3BFF),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(1))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Send',
                          style: TextStyle(color: Color(0xffFFFFFF)),
                        )),
                  ),
                  const SizedBox(
                    height: 0.1,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showBottomSheetGetgiftsignin(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.5,
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'App Store',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff171724),
                                fontSize: 20),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Cancel',
                                style: TextStyle(color: Color(0xffA8A8A8)),
                              )),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image(image: AssetImage('assets/logo.png')),
                        title: Row(
                          children: [
                            Text(
                              '65 coins',
                              style: TextStyle(
                                  color: Color(0xff010101),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '12+',
                              style: TextStyle(
                                  backgroundColor: Color(0xffA29F9F),
                                  fontSize: 7),
                            )
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TikTok',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff7A7A7A)),
                            ),
                            Text(
                              'In-App Purchase',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff7A7A7A)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Text(
                        'ACCOUNT',
                        style:
                            TextStyle(color: Color(0xff7A7A7A), fontSize: 14),
                      ),
                      title: Container(
                        width: constraints.maxWidth * 0.1,
                        height: constraints.maxWidth * 0.08,
                        decoration: const BoxDecoration(
                            color: Color(0xffBCBCBC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const TextField(
                          cursorHeight: 18,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(bottom: 17, left: 10),
                            hintStyle: TextStyle(
                                color: Color(0xff8C8888), fontSize: 13),
                          ),
                        ),
                      ),
                      trailing: SizedBox(
                        width: constraints.maxWidth * 0.2,
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: SizedBox(
                        width: constraints.maxWidth * 0.18,
                      ),
                      title: const Text(
                        'PRICE',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 11,
                        ),
                      ),
                      trailing: const Text(
                        'US\$0.99',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff000000)),
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      height: constraints.maxHeight * 0.001,
                    ),
                    Container(
                      height: constraints.maxHeight * 0.12,
                      width: constraints.maxWidth * 0.13,
                      decoration: BoxDecoration(
                          color: const Color(0xffD2CBCB),
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color(0xff397EEB), width: 2.5)),
                      child: const Center(
                        child: Icon(
                          Icons.check,
                          size: 30,
                          color: Color(0xff397EEB),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    controller = VideoPlayerController.network(
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', // Replace with your video URL
      videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: true),
    );

    initializeVideoPlayerFuture = controller.initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized.
      setState(() {});
    }).catchError((error) {
      // Handle any errors during initialization
      print("Error initializing video: $error");
    });

    controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> labels = List.generate(10, (index) => 'Container $index');
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          width: 320,
          backgroundColor: const Color(0xff111111),
          child: Container(
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(28.0),
                  child: Row(
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'People',
                        style: TextStyle(
                            color: Color(0xff3F3BFF),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr1.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'jakirkhanjoy175',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr2.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'jakirkhanjoy175',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr3.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Wazzz uppp!!!',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '3',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr4.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'jakirkhanjoy175',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr5.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'ipdella406',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr6.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'jakirkhanjoy175',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr7.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'pradip9335',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr8.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'jakirkhanjoy175',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr4.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'jakirkhanjoy175',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          image: DecorationImage(
                              image: AssetImage('assets/dr6.png'),
                              fit: BoxFit.fill)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'jakirkhanjoy175',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.group_outlined,
                              color: Color(0xffFEFEFE),
                              size: 17,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xffFEFEFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        key: _scaffoldKey,
        body: Stack(
          children: [
            Center(
              child: SizedBox(
                height: height * 0.4,
                width: width * 0.5,
                child: FutureBuilder(
                  future: initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return FittedBox(
                        fit: BoxFit.fill,
                        child: SizedBox(
                          width: controller.value.size.width,
                          height: controller.value.size.height,
                          child: VideoPlayer(controller),
                        ), // SizedBox
                      ); // FittedBox
                    } else {
                      // If the VideoPlayerController is still initializing, show a loading spinner.
                      return const Center(
                        child: CircularProgressIndicator(),
                      ); // Center
                    } // if-else snapshot.connectionState
                  }, // FutureBuilder builder
                ), // FutureBuilder
              ),
            ),
            Container(
              height: height,
              width: width,
              color: Colors.green.withOpacity(0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * 0.06,
                          width: width * 0.44,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () => _showBottomSheet(context),
                                child: Container(
                                  height: height * 0.06,
                                  width: width * 0.1,
                                  decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/ppic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              const Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Text(
                                      'kortnees87',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    '7.5k likes',
                                    style: TextStyle(
                                        fontSize: 7,
                                        color: Color(0xffEAECE9),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                height: height * 0.048,
                                width: width * 0.18,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    color: Color(0xffFFFFFF)),
                                child: const Center(
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff3F3BFF)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Container(
                          height: height * 0.06,
                          width: width * 0.07,
                          decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/avatar.jpg'),
                              )),
                        ),
                        Container(
                          height: height * 0.06,
                          width: width * 0.07,
                          decoration: const BoxDecoration(
                            color: Color(0xff6069BA),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Text(
                            'R',
                            style: TextStyle(color: Color(0xffFAFFFF)),
                          )),
                        ),
                        InkWell(
                          onTap: () => _showBottomSheet1(context),
                          child: Container(
                            height: height * 0.04,
                            width: width * 0.11,
                            decoration: const BoxDecoration(
                                color: Color(0xff192133),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.person_2_rounded,
                                  color: Color(0xffA3A9AE),
                                  size: 16,
                                ),
                                Text(
                                  '811',
                                  style: TextStyle(
                                      color: Color(0xffA3A9AE), fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xffE7E8E8),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 300),
                      child: Container(
                        height: height * 0.03,
                        width: width * 0.25,
                        decoration: const BoxDecoration(
                          color: Color(0xff192133),
                          // Replace with the color of the ElevatedButton
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(
                                20), // Same border radius as the ElevatedButton
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.public_outlined,
                                  color: Colors
                                      .blue), // Ensure the icon color matches
                              SizedBox(
                                  width:
                                      5), // Add some spacing between the icon and text
                              Text(
                                'Explore  >',
                                style: TextStyle(
                                    color: Color(0xffFCFEFF),
                                    fontSize: 12), // Ensure text color matches
                              ),
                            ],
                          ),
                        ),
                      )),
                  const Spacer(),
                  Container(
                    height: height * 0.35,
                    width: width,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.25,
                          width: width,
                          color: Colors.transparent,
                          child: ListView(
                            children: const [
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/cm1.png'),
                                ),
                                title: Text(
                                  'gimme_a_namee',
                                  style: TextStyle(color: Color(0xffC4BBBA)),
                                ),
                                subtitle: Text('Should I join the USMC',
                                    style: TextStyle(
                                        color: Color(0xffFEFEFE),
                                        fontWeight: FontWeight.bold)),
                              ),
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/cm2.png'),
                                ),
                                title: Text(
                                  'd_ginger_ boss',
                                  style: TextStyle(color: Color(0xffC4BBBA)),
                                ),
                                subtitle: Text('@cndylee1 yes',
                                    style: TextStyle(
                                        color: Color(0xffFEFEFE),
                                        fontWeight: FontWeight.bold)),
                              ),
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/cm3.png'),
                                ),
                                title: Text(
                                  'chupapimuiyaino',
                                  style: TextStyle(color: Color(0xffC4BBBA)),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏'),
                                    Text('🙏💰💰💰💰💰💰💰💰💰💰💰')
                                  ],
                                ),
                              ),
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/cm1.png'),
                                ),
                                title: Text(
                                  'johnmobbin',
                                  style: TextStyle(color: Color(0xffC4BBBA)),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('wwwwwwwwwwwwwwwwwwwwwwwwww',
                                        style: TextStyle(
                                            color: Color(0xffFEFEFE),
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        'tttttttttttttttttttttttttttttt\vvvvvvvvvvvvvvvvvvvvvvvvvv',
                                        style: TextStyle(
                                            color: Color(0xffFEFEFE),
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width,
                          height: height * 0.1,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: height * 0.055,
                                width: width * 0.6,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Color(0xff201D1E),
                                ),
                                child: TextFormField(
                                  enabled: true,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: 'Add comment...',
                                  ),
                                  style: const TextStyle(color: Colors.white),

                                  maxLines:
                                      null, // Allow the TextFormField to grow vertically
                                  keyboardType: TextInputType
                                      .multiline, // Enable multiline input
                                  // textInputAction: TextInputAction
                                  //     .newline, // Allow Enter key to create new lines
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => _showBottomSheetQ(context),
                                    icon: const Icon(
                                      Icons.live_help_outlined,
                                      color: Color(0xff9A9A9A),
                                      size: 30,
                                    ),
                                  ),
                                  const Text(
                                    'Q&A',
                                    style: TextStyle(
                                      color: Color(0xff9A9A9A),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => _showBottomSheetG(context),
                                    icon: const Icon(
                                      Icons.wallet_giftcard_outlined,
                                      color: Color(0xff9A9A9A),
                                      size: 30,
                                    ),
                                  ),
                                  const Text(
                                    'Gift',
                                    style: TextStyle(
                                      color: Color(0xff9A9A9A),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => _showBottomSheetS(context),
                                    icon: const Icon(
                                      Icons.share_outlined,
                                      color: Color(0xff9A9A9A),
                                      size: 30,
                                    ),
                                  ),
                                  const Text(
                                    '20',
                                    style: TextStyle(
                                      color: Color(0xff9A9A9A),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    // If the video is playing, pause it.
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      // If the video is paused, play it.
                      controller.play();
                    }
                  });
                },
                child: SizedBox(
                  height: height * 0.1,
                  width: width * 0.2,
                  child: Opacity(
                    opacity: controller.value.isPlaying
                        ? 0
                        : 0.3, // Adjust opacity based on play state
                    child: Icon(
                      controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      size: 100,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
