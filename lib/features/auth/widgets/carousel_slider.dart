import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vicara/common/rounded_button.dart';
import 'package:vicara/theme/theme.dart';

class CarouselImage extends StatefulWidget {
  final List<String> imageList;
  final List<Color> colorList;
  const CarouselImage({
    super.key,
    required this.imageList,
    required this.colorList,
  });

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: widget.imageList.map((item) {
              return SvgPicture.asset(item, fit: BoxFit.contain);
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imageList.asMap().entries.map((e) {
              return Container(
                width: 12,
                height: 12,
                margin: const EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == e.key
                        ? widget.colorList[_current]
                        : Pallete.lightGrey),
              );
            }).toList(),
          ),
          const SizedBox(height: 40),
          RoundedButton(
            label: "Mulai di sini",
            backgroundColor: widget.colorList[_current],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sudah punya akun? ",
                style: TextStyle(
                    color: Pallete.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Masuk di sini",
                  style: TextStyle(
                      color: widget.colorList[_current],
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
