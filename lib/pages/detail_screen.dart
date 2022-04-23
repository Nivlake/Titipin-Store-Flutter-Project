import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:expandable/expandable.dart';
import 'package:titipin_store/model/product_list.dart';

class FavButton extends StatefulWidget {
  const FavButton({Key? key}) : super(key: key);

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.pink : Colors.grey,
        size: 29,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class DetailScreen extends StatelessWidget {
  final ProductList product;
  final _controller = PageController();
  final fontStyle1 = "nunito";
  final fontStyle2 = "nunitoB";

  DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 480,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      height: 386,
                      child: PageView(
                        controller: _controller,
                        children: [
                          Image.asset(product.imageDetail[0]),
                          Image.asset(product.imageDetail[1]),
                          Image.asset(product.imageDetail[2]),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange[900],
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: SafeArea(
                      child: Container(
                        height: 340,
                        alignment: Alignment.bottomCenter,
                        child: SmoothPageIndicator(
                          controller: _controller,
                          count: product.imageDetail.length,
                          effect: JumpingDotEffect(
                            activeDotColor: Colors.deepOrange,
                            dotColor: Colors.deepOrange.shade100,
                            dotHeight: 12,
                            dotWidth: 12,
                            spacing: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    height: 485,
                    child: Align(
                      alignment: const Alignment(-0.92, 0.77),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.price,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: fontStyle2,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[900]),
                          ),
                          const FavButton()
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    height: 485,
                    child: Align(
                      alignment: const Alignment(-0.92, 0.81),
                      child: Row(
                        children: [
                          Text(
                            product.name,
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: fontStyle1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 485,
                    child: Align(
                      alignment: const Alignment(-1, 0.92),
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 12, 241, 20),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          child: const Text(
                            "READY",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: "nunito",
                              // backgroundColor: Color.fromARGB(255, 9, 241, 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 6, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Brand",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontStyle2,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              product.brand,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontStyle1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Category",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontStyle2,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              product.category,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontStyle1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Series",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontStyle2,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              product.series,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontStyle1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "From",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontStyle2,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              product.from,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontStyle1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LimitedBox(
              maxHeight: double.infinity,
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ExpandablePanel(
                    header: const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "nunitoB",
                      ),
                    ),
                    collapsed: Text(
                      product.description,
                      textAlign: TextAlign.justify,
                      maxLines: 4,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: fontStyle1,
                      ),
                    ),
                    expanded: Text(
                      product.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: fontStyle1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(6),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to cart",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: fontStyle2),
                      ),
                      const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 21,
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(6),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'BUY ',
                    style: TextStyle(fontFamily: fontStyle2, fontSize: 17),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.red),
                      ),
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
