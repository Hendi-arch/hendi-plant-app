import 'package:flutter/material.dart';
import 'package:flutter_app_first/Utils/config.dart';

class Splash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Transform.translate(
      offset: Offset(
        0,
        SizeConfig()
            .calculateSize(-130, heightFrameDesign, SizeConfig.screenHeight),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("$assetPath/satu.png")),
          shape: BoxShape.rectangle,
        ),
        child: Stack(
          children: [
            _buildCaption0(),
            _buildCaption1()
          ],
        ),
      ),
    );
  }

  Widget _buildCaption0() {
    return Align(
      alignment: Alignment(0, 0.45),
      child: Text(
        "Identify Plant",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xff36455A),
          fontFamily: "Roboto",
          fontSize: SizeConfig()
              .calculateSize(19, heightFrameDesign, SizeConfig.screenHeight),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildCaption1() {
    return Align(
      alignment: Alignment(0, 0.58),
      child: SizedBox(
        width: SizeConfig().calculateSize(
            263, widthFrameDesign, SizeConfig.screenWidth),
        child: Text(
          "You can identify the plant you don't know through your camera",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xff6A6F7D),
            fontFamily: "Roboto",
            height: 1.5,
            fontSize: SizeConfig()
                .calculateSize(13, heightFrameDesign, SizeConfig.screenHeight),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
