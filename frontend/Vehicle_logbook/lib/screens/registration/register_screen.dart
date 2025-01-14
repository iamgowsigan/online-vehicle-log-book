import 'package:flutter/material.dart';
import 'package:vehicle_logbook/components/relative_scale.dart';
import 'package:vehicle_logbook/screens/registration/credential_screen.dart';
import 'package:vehicle_logbook/screens/registration/login_screen.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';

import '../../router/right_open_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with RelativeScale {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);
    return MaterialApp(
      theme: ThemeFont,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, RightOpenScreen(widget: CredentialScreen()));
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: ThemeButton,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: fc_1,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 0,
                child: _screenBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _screenBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: PageView(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                children: <Widget>[
                  firstNameWidget(),
                  ageWidget(),
                  genderWidget(),
                  contactWidget(),
                  addressWidget(),
                  bgWidget(),
                  useridWidget(),
                  emailWidget(),
                  passwordWidget(),
                ],
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }

  firstNameWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "1 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What's your Full name?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your Full name',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_black,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  ageWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "2 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What's your Age?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your age',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  genderWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "3 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your gender identity?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your gender',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(3,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  contactWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "4 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Contact number?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your Number',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(4,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  addressWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "5 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Contact Address?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.streetAddress,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your Address',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(5,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  bgWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "6 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Blood group?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your blood group',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(6,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  useridWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "7 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your User ID?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your user ID',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(7,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  emailWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "8 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Email ID?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your Email ID',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(8,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  passwordWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "9 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Password?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sy(5)),
                  topRight: Radius.circular(sy(5)),
                  bottomLeft: Radius.circular(sy(5)),
                  bottomRight: Radius.circular(sy(5)),
                ),
              ),
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.visiblePassword,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, RightOpenScreen(widget: LoginScreen()));
                  },
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
