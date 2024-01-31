import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> nameList = [
    'Burger',
    'Pasta',
    'Pizza',
    'grilled meat',
    'Biryani',
    'Cake',
    'Sandwitch',
    'Wraps',

  ];
  List<String> imgList = [
    'https://img.freepik.com/free-photo/grilled-beef-burger-with-fries-cheese-tomato-generative-ai_188544-8466.jpg?w=1380&t=st=1706725822~exp=1706726422~hmac=10138f1c6e966d81576c4710a5604c37be194654f75a3541043a9cb5a78a298f',
    'https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg?w=1380&t=st=1706725698~exp=1706726298~hmac=391a56873ecfa4dbbac7c33b6f2fe68e39672186d9235583cc81003727831edf',
    'https://img.freepik.com/free-photo/freshly-italian-pizza-with-mozzarella-cheese-slice-generative-ai_188544-12347.jpg?w=1380&t=st=1706725749~exp=1706726349~hmac=2c789bcb69b1591f789b034a3b040fbd5e0ec371e00c408a3e636a56ef48bb5f',
    'https://img.freepik.com/free-photo/flame-grilled-meat-cooking-flames-generative-ai_188544-12355.jpg?w=1380&t=st=1706725925~exp=1706726525~hmac=4fb8a5ff02ab038bda031865efa2e02f490f284608fb82d366dc30d256d5587b''https://img.freepik.com/free-photo/gourmet-chicken-biryani-with-steamed-basmati-rice-generated-by-ai_188544-13480.jpg?t=st=1706715243~exp=1706718843~hmac=f05a43abe65f21461f0529bb0143a3dbce9251fa34c0c1c99a96456f05a6ef3f&w=1380',
    'https://img.freepik.com/free-photo/club-sandwich-with-side-french-fries_140725-1744.jpg?w=1380&t=st=1706726333~exp=1706726933~hmac=be9210774fb006bd8ffcbaef4821c815f6a1984181d08b1cb889f69e916cf2d5',
    'https://img.freepik.com/free-photo/joyful-birthday-celebration-with-delicious-chocolate-cake-generative-ai_188544-9589.jpg?w=1380&t=st=1706726408~exp=1706727008~hmac=564194328ee0d1ed4526a0341b8f5e4c9d22e8aa88c6ff9d581075890ae0b794',
    'https://img.freepik.com/free-photo/front-view-delicious-ham-sandwiches-wooden-board-dark-surface_179666-34425.jpg?w=1380&t=st=1706726608~exp=1706727208~hmac=0a5dbd9dd0c8cf9b68b0a28aac459118624d31eaafb49924a46d470e2d464570',
    'https://img.freepik.com/free-photo/side-view-doner-with-grilled-chicken-greens-lettuce-tomato-french-fries-table_141793-4881.jpg?w=1380&t=st=1706726638~exp=1706727238~hmac=2adf225683391f8a2f15f5fc569deeb0a79506b6600f0db20b3d678f86c0ba0a',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 45.94),
                child: Row(
                  children: [
                    Icon(
                      Icons.keyboard_backspace_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      width: 80.93,
                    ),
                    Text(
                      "Hot Spot",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
              ),
              Container(
                width: 353,
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(229, 229, 229, 0.46),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.search_sharp,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        "Search Super Foodoo",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Text(
                        "|",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(Icons.list_outlined),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Adding GridView.builder
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                    ),
                    itemCount: 10, // Set the number of items to 2
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image:
                                        NetworkImage(imgList[index].toString()),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  nameList[index].toString(),
                                  // You can set dynamic text here
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
