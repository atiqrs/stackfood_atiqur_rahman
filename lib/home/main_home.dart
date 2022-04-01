import 'package:atiqur_rahman/features/bookmark/presentation/pages/bookmark_screen.dart';
import 'package:atiqur_rahman/features/cart/presentation/pages/cart_screen.dart';
import 'package:atiqur_rahman/features/favourite/presentation/pages/favourite_screen.dart';
import 'package:flutter/material.dart';
import '../core/utils/constants.dart';
import '../features/landing_home/presentation/pages/landing_home_screen.dart';
import 'widget/nav_button.dart';
import 'widget/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  static const _homeIndex = 0;
  static const _favouriteIndex = 1;
  static const _cartIndex = 2;
  static const _bookmarkIndex = 3;
  static const _drawerIndex = 4;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
        child: buildDrawer(
          context,
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          LandingHomePage(),
          FavouritePage(),
          CartPage(),
          BookmarkPage(),
          // DrawerPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: height * .12,
          width: double.infinity,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              // home
              MyNavButton(
                  thisIndex: _homeIndex,
                  currentIndex: _currentIndex,
                  onTapFunc: () {
                    setState(() {
                      _currentIndex = _homeIndex;
                      debugPrint('$_currentIndex');
                    });
                  },
                  icon: Icon(
                    Icons.home_rounded,
                    color: secondayColor,
                    size: width * .1,
                  ),
                  selectedIcon: Icon(
                    Icons.home,
                    color: primaryColor,
                    size: width * .1,
                  )),
              // favorite
              MyNavButton(
                  thisIndex: _favouriteIndex,
                  currentIndex: _currentIndex,
                  onTapFunc: () {
                    setState(() {
                      _currentIndex = _favouriteIndex;
                      debugPrint('$_currentIndex');
                    });
                  },
                  icon: Icon(
                    Icons.favorite_rounded,
                    color: secondayColor,
                    size: width * .1,
                  ),
                  selectedIcon: Icon(
                    Icons.favorite_rounded,
                    color: primaryColor,
                    size: width * .1,
                  )),
              // cart
              MyNavButton(
                thisIndex: _cartIndex,
                currentIndex: _currentIndex,
                onTapFunc: () {},
                icon: SizedBox(
                  height: height * 0.11,
                  width: width * 0.11,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = _cartIndex;
                        debugPrint('$_currentIndex');
                      });
                    },
                    backgroundColor: primaryColor,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  ),
                ),
                selectedIcon: SizedBox(
                  height: height * 0.11,
                  width: width * 0.11,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = _cartIndex;
                        debugPrint('$_currentIndex');
                      });
                    },
                    backgroundColor: primaryColor,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  ),
                ),
              ),
              // bookmark
              MyNavButton(
                thisIndex: _bookmarkIndex,
                currentIndex: _currentIndex,
                onTapFunc: () {
                  setState(() {
                    _currentIndex = _bookmarkIndex;
                    debugPrint('$_currentIndex');
                  });
                },
                icon: Icon(
                  Icons.bookmark_sharp,
                  color: secondayColor,
                  size: width * .1,
                ),
                selectedIcon: Icon(
                  Icons.bookmark_sharp,
                  color: primaryColor,
                  size: width * .1,
                ),
              ),
              // drawer
              MyNavButton(
                thisIndex: _drawerIndex,
                currentIndex: _currentIndex,
                onTapFunc: () => _drawerKey.currentState?.openDrawer(),
                icon: Icon(
                  Icons.dehaze_rounded,
                  color: secondayColor,
                  size: width * .1,
                ),
                selectedIcon: Icon(
                  Icons.dehaze_rounded,
                  color: primaryColor,
                  size: width * .1,
                ),
              )
            ],
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
