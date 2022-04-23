import 'package:flutter/material.dart';
import 'package:titipin_store/pages/detail_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'nav_drawer.dart';
import 'package:titipin_store/model/product_list.dart';

class MainScreen extends StatelessWidget {
  final String userName;
  const MainScreen({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TITIPIN',
          style: TextStyle(fontFamily: "PixelLife", fontSize: 40),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 0, 12, 0),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: Colors.orange[900],
      ),
      drawer: NavDrawer(
        userName: userName,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )),
            height: 178,
            child: Flexible(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                ),
                items: [
                  InkWell(
                    onTap: () => _gotoDetailsPage1(context),
                    child: Hero(
                      tag: 'pvc',
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/carouselPic/Utaha.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => _gotoDetailsPage2(context),
                    child: Hero(
                      tag: 'CumSoon',
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/carouselPic/Mai.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => _gotoDetailsPage3(context),
                    child: Hero(
                      tag: 'Nendo',
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/carouselPic/Shirou.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => _gotoDetailsPage4(context),
                    child: Hero(
                      tag: 'Figma',
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/carouselPic/Sinon.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 2, 0, 0),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Newest Item !",
                style: TextStyle(fontFamily: "nunito", fontSize: 25),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 2.4 / 3.1,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12),
              itemCount: productListList.length,
              itemBuilder: (BuildContext context, index) {
                final ProductList product = productListList[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(product: product)));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(product.imageAsset),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(product.name),
                              const SizedBox(height: 8.0),
                              Text(product.price),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void _gotoDetailsPage1(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'pvc',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Image.asset(
                    "images/carouselPic/Utaha.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void _gotoDetailsPage2(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'CumSoon',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Image.asset(
                    "images/carouselPic/Mai.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void _gotoDetailsPage3(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'Nendo',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Image.asset(
                    "images/carouselPic/Shirou.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void _gotoDetailsPage4(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'Figma',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Image.asset(
                    "images/carouselPic/Sinon.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
