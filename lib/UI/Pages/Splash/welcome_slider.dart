import 'package:flutter/material.dart';
import 'package:flutter_app_first/UI/Pages/login.dart';
import 'package:flutter_app_first/UI/Widgets/custom_widget.dart';
import 'package:flutter_app_first/Utils/config.dart';
import 'package:flutter_app_first/UI/Pages/Splash/splash1.dart';
import 'package:flutter_app_first/UI/Pages/Splash/splash2.dart';
import 'package:flutter_app_first/UI/Pages/Splash/splash3.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void _tabListener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      _tabListener();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.removeListener(() {
      _tabListener();
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Stack(
          children: [
            TabBarView(
              controller: _tabController,
              children: <Widget>[Splash1(), Splash2(), Splash3()],
            ),
            _buildTabIndicator(),
            _buildButton()
          ],
        ),
      ),
    );
  }

  Widget _buildTabIndicator() {
    return Align(
      alignment: Alignment(0, 0.5),
      child: TabPageSelector(
        controller: _tabController,
        color: const Color(0xffDBDBDB),
        selectedColor: const Color(0xff2DDA93),
        indicatorSize: 7 * SizeConfig.scaleDiagonal,
      ),
    );
  }

  Widget _buildButton() {
    return Align(
      alignment: Alignment(0, 0.7),
      child: CustomButton(
        onPressed: () => _navigateToNextPage(),
        child: Container(
          height: SizeConfig()
              .calculateSize(50, heightFrameDesign, SizeConfig.screenHeight),
          width: SizeConfig()
              .calculateSize(300, widthFrameDesign, SizeConfig.screenWidth),
          alignment: Alignment.center,
          child: Text(
            _tabController.index == 2 ? "SIGN UP" : "NEXT",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontFamily: "SF Pro Text",
              fontSize: SizeConfig().calculateSize(
                  15, heightFrameDesign, SizeConfig.screenHeight),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToNextPage() {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => Login(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var curve = Curves.elasticOut;

          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return ScaleTransition(scale: curvedAnimation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 500),
        reverseTransitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }
}
