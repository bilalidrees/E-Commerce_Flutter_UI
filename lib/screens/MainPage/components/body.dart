import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/ScreenArguments.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  AnimationController controller;
  Animation<Offset> offset;
  List<bool> selectionList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  void initState() {
    // controller =
    //     AnimationController(vsync: this, duration: Duration(seconds: 1));
    //
    // offset = Tween<Offset>(
    //   begin: const Offset(-0.5, 0),
    //   end: const Offset(0.5, 0),
    // ).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xFFf4f7fc),
          child: Column(
            children: [
              SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Carousel(
                    dotSize: 6.0,
                    dotBgColor: Colors.transparent,
                    dotColor: Colors.deepOrangeAccent,
                    indicatorBgPadding: 5.0,
                    images: [
                      Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.fitHeight,
                      ),
                      Image.asset(
                        "assets/images/chicken_doppler.png",
                        fit: BoxFit.fitWidth,
                      ),
                      Image.asset(
                        "assets/images/chicken_firehouse.png",
                        fit: BoxFit.fitWidth,
                      )
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                height: SizeConfig.screenHeight,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectionList[index] = !selectionList[index];
                              });
                            },
                            child: Card(
                              margin: const EdgeInsets.only(
                                  top: 8, bottom: 5, right: 12, left: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Image.asset(
                                      index == 0
                                          ? "assets/images/chicken_doppler.png"
                                          : "assets/images/logo.png",
                                      height: getProportionateScreenHeight(80),
                                      width: getProportionateScreenWidth(80),
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    index == 0 ? "Burgers" : "Others",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22),
                                  ),
                                  SizedBox(width: 7),
                                  Icon(
                                    selectionList[index]
                                        ? Icons.arrow_upward
                                        : Icons.arrow_downward,
                                    size: 18,
                                  ),
                                  SizedBox(width: 5),
                                ],
                              ),
                            ),
                          ),
                          Visibility(
                            visible: selectionList[index],
                            child: Container(
                              height: getProportionateScreenWidth(115),
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: ClampingScrollPhysics(),
                                itemCount: 2,
                                itemBuilder:
                                    (BuildContext context, int childIdx) {
                                  return GestureDetector(
                                    onTap: () {
                                      if (index == 0)
                                        Navigator.pushNamed(
                                          context,
                                          HomeScreen.routeName,
                                          arguments: ScreenArguments(
                                            type: childIdx == 0 ? 0 : 1,
                                          ),
                                        );
                                    },
                                    child: Container(
                                      width: getProportionateScreenWidth(135),
                                      height: 40,
                                      child: Card(
                                        margin: const EdgeInsets.only(
                                            top: 8, bottom: 5, left: 15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            index == 0
                                                ? Image.asset(
                                                    childIdx == 0
                                                        ? "assets/images/chicken_firehouse.png"
                                                        : "assets/images/beef_messymeat.png",
                                                    height:
                                                        getProportionateScreenHeight(
                                                            50),
                                                    width:
                                                        getProportionateScreenWidth(
                                                            50),
                                                  )
                                                : Image.asset(
                                                    "assets/images/logo.png",
                                                    height:
                                                        getProportionateScreenHeight(
                                                            50),
                                                    width:
                                                        getProportionateScreenWidth(
                                                            50),
                                                  ),
                                            SizedBox(height: 5),
                                            index == 0
                                                ? Text(
                                                    childIdx == 0
                                                        ? "Chicken Burger"
                                                        : "Beef Burger",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15),
                                                  )
                                                : Text(
                                                    "Others",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15),
                                                  ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildList() {
    List<Widget> rootlist = [];
    rootlist.add(
      ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => Card(
          child: Center(child: Text('Dummy Card Text')),
        ),
      ),
    );

    return rootlist;
  }
}
