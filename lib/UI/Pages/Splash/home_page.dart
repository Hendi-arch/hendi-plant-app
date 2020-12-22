import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_first/Utils/config.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter_app_first/UI/Widgets/custom_widget.dart';

class HomePage extends StatelessWidget {
  final _pageController =
      PageController(initialPage: 0, viewportFraction: 0.95);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
            SizeConfig.screenWidth,
            SizeConfig().calculateSize(
                150, heightFrameDesign, SizeConfig.screenHeight)),
        child: Container(
          child: Stack(
            children: [
              Transform.translate(
                offset: Offset(
                    SizeConfig().calculateSize(
                        207, widthFrameDesign, SizeConfig.screenWidth),
                    SizeConfig().calculateSize(
                        -45, heightFrameDesign, SizeConfig.screenHeight)),
                child: Container(
                  width: 204 * SizeConfig.scaleDiagonal,
                  height: 204 * SizeConfig.scaleDiagonal,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF).withOpacity(0.15),
                      shape: BoxShape.circle),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text.rich(
                      TextSpan(text: "Hello Hendi\n", children: <TextSpan>[
                        TextSpan(
                          text: "Let’s Learn More About Plants",
                          style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontFamily: "SF Pro Text",
                            fontSize: SizeConfig().calculateSize(
                                14, heightFrameDesign, SizeConfig.screenHeight),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ]),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color(0xffFFFFFF),
                        fontFamily: "SF Pro Text",
                        fontSize: SizeConfig().calculateSize(
                            21, heightFrameDesign, SizeConfig.screenHeight),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://lh3.googleusercontent.com/a-/AOh14GhqMsahofaNudr6MilVdiY4V9JKyTCotQ1jTBg_ww=s96-c-rg-br100"),
                            fit: BoxFit.cover,
                          )),
                      width: 47 * SizeConfig.scaleDiagonal,
                      height: 47 * SizeConfig.scaleDiagonal,
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Search For Plants",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Text",
                          fontSize: 14 * SizeConfig.scaleDiagonal,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig().calculateSize(
                            5, widthFrameDesign, SizeConfig.screenWidth),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 24.0 * SizeConfig.scaleDiagonal,
                      ),
                    ],
                  ),
                  color: Colors.transparent,
                  onPressed: () {},
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xff61D2C4), const Color(0xff29D890)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: SizeConfig().calculateSize(
                      108, widthFrameDesign, SizeConfig.screenWidth),
                  height: SizeConfig().calculateSize(
                      76, heightFrameDesign, SizeConfig.screenHeight),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFFFFF),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: const Color(0xff8D8D8D).withOpacity(0.15),
                            offset: Offset(4, 6),
                            blurRadius: 19,
                            spreadRadius: 0)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: const Color(0xff2DDA93),
                        size: 24 * SizeConfig.scaleDiagonal,
                      ),
                      Text(
                        "IDENTIFY",
                        style: TextStyle(
                          color: const Color(0xff6A6F7D),
                          fontWeight: FontWeight.w600,
                          fontFamily: "SF Pro Text",
                          fontSize: 10 * SizeConfig.scaleDiagonal,
                        ),
                      ),
                    ],
                  )),
              Container(
                  width: SizeConfig().calculateSize(
                      108, widthFrameDesign, SizeConfig.screenWidth),
                  height: SizeConfig().calculateSize(
                      76, heightFrameDesign, SizeConfig.screenHeight),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFFFFF),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: const Color(0xff8D8D8D).withOpacity(0.15),
                            offset: Offset(4, 6),
                            blurRadius: 19,
                            spreadRadius: 0)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.local_florist,
                        color: const Color(0xff2DDA93),
                        size: 24 * SizeConfig.scaleDiagonal,
                      ),
                      Text(
                        "SPECIES",
                        style: TextStyle(
                          color: const Color(0xff6A6F7D),
                          fontWeight: FontWeight.w600,
                          fontFamily: "SF Pro Text",
                          fontSize: 10 * SizeConfig.scaleDiagonal,
                        ),
                      ),
                    ],
                  )),
              Container(
                  width: SizeConfig().calculateSize(
                      108, widthFrameDesign, SizeConfig.screenWidth),
                  height: SizeConfig().calculateSize(
                      76, heightFrameDesign, SizeConfig.screenHeight),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFFFFF),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: const Color(0xff8D8D8D).withOpacity(0.15),
                            offset: Offset(4, 6),
                            blurRadius: 19,
                            spreadRadius: 0)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        CupertinoIcons.book_fill,
                        color: const Color(0xff2DDA93),
                        size: 24 * SizeConfig.scaleDiagonal,
                      ),
                      Text(
                        "ARTICLES",
                        style: TextStyle(
                          color: const Color(0xff6A6F7D),
                          fontWeight: FontWeight.w600,
                          fontFamily: "SF Pro Text",
                          fontSize: 10 * SizeConfig.scaleDiagonal,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Container(
            height: SizeConfig()
                .calculateSize(166, heightFrameDesign, SizeConfig.screenHeight),
            width: SizeConfig.screenWidth,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: index == 0
                          ? Colors.red
                          : index == 1
                              ? Colors.yellow
                              : Colors.green,
                      borderRadius: BorderRadius.circular(10.0)),
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                );
              },
              itemCount: 3,
            ),
          )
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.person, title: 'Discovery'),
        ],
        style: TabStyle.reactCircle,
        color: const Color(0xff2DDA93),
        backgroundColor: Colors.white,
        activeColor: const Color(0xff2DDA93),
        curveSize: SizeConfig()
            .calculateSize(115, heightFrameDesign, SizeConfig.screenHeight),
        initialActiveIndex: 2, //optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
