// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vicara/constants/constants.dart';
import 'package:vicara/features/auth/widgets/carousel_slider.dart';
import 'package:vicara/theme/theme.dart';

class WelcomePage extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const WelcomePage());
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List<String> imgList = [
    AssetsConstants.mascot1,
    AssetsConstants.mascot2,
    AssetsConstants.mascot3,
    AssetsConstants.mascot4,
  ];

  final List<Color> clrList = [
    Pallete.orange,
    Pallete.pink,
    Pallete.blue,
    Pallete.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          // padding: EdgeInsets.symmetric(horizontal: 35),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Selamat datang di",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              SvgPicture.asset(
                AssetsConstants.logo,
                height: 150,
              ),
              CarouselImage(imageList: imgList, colorList: clrList),
              const SizedBox(height: 40),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Dengan masuk, Anda menerima '),
                    TextSpan(
                      text: 'Syarat Penggunaan dan Kebijakan Privasi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(text: ' kami.'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
