import 'package:flutter/material.dart';
import 'package:flutter_app_first/Utils/config.dart';
import 'package:flutter_app_first/UI/Widgets/custom_widget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _checkBox = false;

  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: const Color(0xffA1A8B9),
            iconSize: 24 * SizeConfig.scaleDiagonal,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight -
                (kToolbarHeight + MediaQuery.of(context).padding.top),
            child: Stack(
              children: [
                _buildTitle(),
                _buildFormInput(),
                _buildOptionBottomAction(),
                _buildLoginButton(),
                _buildSignUpButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Transform(
      transform: Matrix4.identity()
        ..translate(
          SizeConfig()
              .calculateSize(19, widthFrameDesign, SizeConfig.screenWidth),
        ),
      child: RichText(
        text: TextSpan(
            text: "Hello\n",
            style: TextStyle(
              color: const Color(0xff36455A),
              fontFamily: "SF Pro Text",
              fontSize: SizeConfig().calculateSize(
                  30, heightFrameDesign, SizeConfig.screenHeight),
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Let’s Learn More About Plants",
                style: TextStyle(
                  color: const Color(0xff495566),
                  fontFamily: "SF Pro Text",
                  fontSize: SizeConfig().calculateSize(
                      16, heightFrameDesign, SizeConfig.screenHeight),
                  fontWeight: FontWeight.normal,
                ),
              )
            ]),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildFormInput() {
    return Form(
      key: _globalKey,
      child: Transform.translate(
        offset: Offset(
            SizeConfig().calculateSize(
              19,
              widthFrameDesign,
              SizeConfig.screenWidth,
            ),
            SizeConfig().calculateSize(
              100,
              heightFrameDesign,
              SizeConfig.screenHeight,
            )),
        child: Container(
          height: 180 * SizeConfig.scaleDiagonal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextFormField(
                onChanged: (value) {},
                controller: _usernameController,
                cursorHeight: SizeConfig().calculateSize(
                    15.0, heightFrameDesign, SizeConfig.screenHeight),
                textStyle: TextStyle(
                  fontFamily: "SF Pro Text",
                  color: const Color(0xff36455A),
                  fontSize: 17 * SizeConfig.scaleDiagonal,
                  fontWeight: FontWeight.w500,
                ),
                inputDecoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: const Color(0xff6A6F7D),
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0 * SizeConfig.scaleDiagonal,
                  ),
                  suffixIcon: Icon(
                    Icons.check_sharp,
                    color: const Color(0xff2DDA93),
                    size: 24 * SizeConfig.scaleDiagonal,
                  ),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xff2DDA93))),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xff2DDA93))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xff2DDA93))),
                ),
              ),
              CustomTextFormField(
                obscureText: true,
                onChanged: (value) {},
                controller: _passwordController,
                cursorHeight: SizeConfig().calculateSize(
                    15.0, heightFrameDesign, SizeConfig.screenHeight),
                textStyle: TextStyle(
                  fontFamily: "SF Pro Text",
                  color: const Color(0xff36455A),
                  fontSize: 17 * SizeConfig.scaleDiagonal,
                  fontWeight: FontWeight.w500,
                ),
                inputDecoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: const Color(0xff6A6F7D),
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0 * SizeConfig.scaleDiagonal,
                  ),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xff2DDA93))),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xff2DDA93))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xff2DDA93))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionBottomAction() {
    return Align(
      alignment: Alignment(0.0, -0.12),
      child: Container(
        width: SizeConfig.screenWidth * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _checkBox,
                  onChanged: (value) => setState(() => _checkBox = value),
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  activeColor: const Color(0xff2DDA93),
                  checkColor: Colors.white,
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12 * SizeConfig.scaleDiagonal,
                    color: const Color(0xff6A6F7D),
                    fontFamily: "SF Pro Text",
                  ),
                )
              ],
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12 * SizeConfig.scaleDiagonal,
                  color: const Color(0xff6A6F7D),
                  fontFamily: "SF Pro Text",
                ),
              ),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Align(
      alignment: Alignment(0.0, 0.1),
      child: CustomButton(
        onPressed: () {},
        child: Container(
          height: SizeConfig()
              .calculateSize(50, heightFrameDesign, SizeConfig.screenHeight),
          width: SizeConfig()
              .calculateSize(300, widthFrameDesign, SizeConfig.screenWidth),
          alignment: Alignment.center,
          child: Text(
            "LOGIN",
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

  Widget _buildSignUpButton() {
    return Align(
      alignment: Alignment(0.0, 0.25),
      child: FlatButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 12 * SizeConfig.scaleDiagonal,
                color: const Color(0xff6A6F7D),
                fontWeight: FontWeight.w400),
            text: "Don’t Have Account? ",
            children: [
              TextSpan(
                text: "Sign Up",
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 12 * SizeConfig.scaleDiagonal,
                  color: const Color(0xff2DDA93),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
      ),
    );
  }
}
