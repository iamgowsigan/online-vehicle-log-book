import 'package:flutter/material.dart';
import 'package:vehicle_logbook/components/relative_scale.dart';
import 'package:vehicle_logbook/router/left_open_screen.dart';
import 'package:vehicle_logbook/router/right_open_screen.dart';
import 'package:vehicle_logbook/screens/registration/login_screen.dart';
import 'package:vehicle_logbook/screens/registration/register_screen.dart';
import 'package:vehicle_logbook/screens/registration/service_login_screen.dart';
import 'package:vehicle_logbook/screens/registration/service_register_screen.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';

class CredentialScreen extends StatefulWidget {
  const CredentialScreen({Key? key}) : super(key: key);

  @override
  State<CredentialScreen> createState() => _CredentialScreenState();
}

class _CredentialScreenState extends State<CredentialScreen>
    with RelativeScale {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);
    return MaterialApp(
      theme: ThemeFont,
      home: SafeArea(
        top: false,
        child: Scaffold(
          key: _scaffoldKey,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(sy(0), sy(40), sy(0), sy(0)),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'USER CREDENTIAL',
                    style: TextStyle(
                      fontSize: sy(l),
                      fontWeight: FontWeight.w800,
                      color: fc_black,
                    ),
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoxContainer("Login", 'login.png', LoginScreen()),
                      BoxContainer("Register", 'edit.png', RegisterScreen()),
                    ],
                  ),
                  SizedBox(
                    height: sy(20),
                  ),
                  Text(
                    'SERVICE CENTRE CREDENTIAL',
                    style: TextStyle(
                      fontSize: sy(l),
                      fontWeight: FontWeight.w800,
                      color: fc_black,
                    ),
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoxContainer("Login", 'login.png', ServiceLoginScreen()),
                      BoxContainer(
                          "Register", 'edit.png', ServiceRegisterScreen()),
                    ],
                  ),
                  SizedBox(
                    height: sy(15),
                  ),
                  Text(
                    'LATEST NEWS AND UPDATES',
                    style: TextStyle(
                      fontSize: sy(l),
                      fontWeight: FontWeight.w600,
                      color: fc_black,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.fromLTRB(0, sy(5), 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: sy(80),
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0, sy(10), 0, sy(10)),
                                child: Container(
                                  height: sy(85),
                                  width: sy(70),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/motor.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    sy(5), sy(5), sy(0), sy(0)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'B6 Armoured Vehicle\nTraining Has Real\nBusiness Impact',
                                      style: TextStyle(
                                        fontSize: sy(n),
                                        fontWeight: FontWeight.w500,
                                        color: fc_black,
                                      ),
                                    ),
                                    Text(
                                      'See More',
                                      style: TextStyle(
                                        fontSize: sy(n - 1),
                                        fontWeight: FontWeight.w200,
                                        color: fc_black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: sy(10),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: sy(80),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(0, sy(10), 0, sy(10)),
                                  child: Container(
                                    height: sy(85),
                                    width: sy(70),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/scooty.jpeg'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      sy(5), sy(0), sy(0), sy(0)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Elements of scooter\ndesign were present in some\nof the earliest motorcycles\nand motor scooters.',
                                        style: TextStyle(
                                          fontSize: sy(n),
                                          fontWeight: FontWeight.w500,
                                          color: fc_black,
                                        ),
                                      ),
                                      Text(
                                        'See More',
                                        style: TextStyle(
                                          fontSize: sy(n - 1),
                                          fontWeight: FontWeight.w200,
                                          color: fc_black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
        ),
      ),
    );
  }

  BoxContainer(String text, String image, Widget method_name) {
    //String path = "assets/images/${image}";
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context, LeftOpenScreen(widget: method_name));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.38,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
          color: ThemeButton,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/${image}",
              width: sy(40),
              height: sy(40),
            ),
            SizedBox(
              height: sy(10),
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: sy(n),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
