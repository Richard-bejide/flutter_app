import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.85),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                const SizedBox(height: 30),
                Center(
                  child: Container(
                      width: 375,
                      height: 110,
                      padding: const EdgeInsets.only(bottom: 24, left: 24, top: 56),
                      decoration: BoxDecoration(color: hexToColor("#021A7F")),
                      child: const Text(
                        'Profile',
                        style: TextStyle(
                            fontFamily: "Merriweather",
                            color: Colors.white,
                            fontSize: 25.0,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      )),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Colors.white,
                          onPrimary: hexToColor("#3E9C10"),
                          minimumSize: const Size(327, 50),
                          maximumSize: const Size(327, 50),
                          shape: BeveledRectangleBorder(
                              side: BorderSide(color: hexToColor("#3E9C10"), width: 1.0),
                              borderRadius: const BorderRadius.all(Radius.circular(8.45)))),
                      onPressed: () {},
                      child: Text('Edit Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Lato",
                              color: hexToColor("#3E9C10"),
                              fontSize: 16.0,
                              height: 1.2,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal))),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: hexToColor("#3E9C10"),
                          onPrimary: hexToColor("#3E9C10"),
                          minimumSize: const Size(327, 50),
                          maximumSize: const Size(327, 50),
                          shape: BeveledRectangleBorder(
                              side: BorderSide(color: hexToColor("#3E9C10"), width: 1.0),
                              borderRadius: const BorderRadius.all(Radius.circular(8.45)))),
                      onPressed: () {},
                      child: const Text('Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Lato",
                              color: Colors.white,
                              fontSize: 16.0,
                              height: 1.2,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal))),
                ),
                const SizedBox(height: 30),
                Center(
                  child: TextFormField(
                    maxLines: 1,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5.0),
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        size: 20,
                        color: hexToColor("#3E9C10"),
                      ),
                      labelStyle: TextStyle(
                          fontFamily: "Lato",
                          color: hexToColor("#595C76"),
                          fontSize: 16.0,
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                      hintText: 'Enter your email address',
                      hintStyle: TextStyle(
                          fontFamily: "Lato",
                          color: hexToColor("#595C76"),
                          fontSize: 13.0,
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: hexToColor("#E8E8E8"), width: 1.0),
                      ),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: hexToColor("#E8E8E8"), width: 1.0)),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: hexToColor("#E8E8E8"), width: 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/car.svg",
                          height: 139,
                          width: 200,
                        ),
                        const SizedBox(height: 24),
                        const Text('Services Completed?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Merriweather",
                                color: Colors.black,
                                fontSize: 25.0,
                                height: 1.2,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal)),
                        const SizedBox(height: 14),
                        Text(
                            'Please select yes, if you are satisfied with the service given by the provider.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Lato",
                                color: hexToColor("#595C76"),
                                fontSize: 16.0,
                                height: 1.2,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal)),
                        const SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0.0,
                                      minimumSize: const Size(128, 50),
                                      maximumSize: const Size(128, 50),
                                      primary: hexToColor("#E93939"),
                                      shape: const BeveledRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8.45)))),
                                  onPressed: () {},
                                  child: const Text('NO',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Lato",
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          height: 1.2,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal))),
                            ),
                            const SizedBox(width: 23),
                            Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0.0,
                                      minimumSize: const Size(128, 50),
                                      maximumSize: const Size(128, 50),
                                      primary: hexToColor("#3E9C10"),
                                      shape: const BeveledRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8.45)))),
                                  onPressed: () {},
                                  child: const Text('YES',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Lato",
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          height: 1.2,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    height: 77,
                    width: 327,
                    decoration: const BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: hexToColor("#E9EDFF"),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          height: 77,
                          child: SvgPicture.asset(
                            "assets/images/tow_truck.svg",
                            color: hexToColor("#00197E"),
                            height: 40,
                            width: 29.09,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child:
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              Center(
                                  child: Text(
                                'Towing',
                                style: TextStyle(
                                    fontFamily: "Lato",
                                    color: hexToColor("#2F2F2F"),
                                    fontSize: 16.0,
                                    height: 1.2,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal),
                              )),
                              Icon(Icons.keyboard_arrow_right,
                                  color: hexToColor("#00197E"), size: 24)
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    height: 77,
                    width: 327,
                    decoration: const BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset(
                              "assets/images/user.png",
                              height: 47,
                              width: 45,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child:
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Towing Service',
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        color: hexToColor("#00197E"),
                                        fontSize: 16.0,
                                        height: 1.2,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Jeremiah Peterson',
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        color: hexToColor("#595C76"),
                                        fontSize: 13.0,
                                        height: 1.2,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ],
                              )),
                              Center(
                                  child: Icon(Icons.keyboard_arrow_right,
                                      color: hexToColor("#3E9C10"), size: 24))
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                      height: 82,
                      width: 375,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  elevation: 0.0,
                                  primary: hexToColor("#F1F1F1"),
                                  shape: const BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8.45)))),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                "assets/images/home.svg",
                                height: 20,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  elevation: 0.0,
                                  primary: hexToColor("#3E9C10"),
                                  shape: const BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8.45)))),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                "assets/images/person.svg",
                                height: 20,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  elevation: 0.0,
                                  primary: hexToColor("#F1F1F1"),
                                  shape: const BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8.45)))),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                "assets/images/notifications.svg",
                                height: 20,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  elevation: 0.0,
                                  primary: hexToColor("#F1F1F1"),
                                  shape: const BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8.45)))),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                "assets/images/settings.svg",
                                height: 20,
                              )),
                        )
                      ])),
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
