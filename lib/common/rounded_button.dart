// import 'package:beebeer_app2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:vicara/theme/theme.dart';

class RoundedButton extends StatelessWidget {
  // final VoidCallback onTap;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  const RoundedButton({
    super.key,
    // required this.onTap,
    required this.label,
    this.backgroundColor = Pallete.orange,
    this.textColor = Pallete.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      child: MaterialButton(
        // minWidth: double.infinity,
        height: 55,
        onPressed: () {},
        color: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward,
              color: textColor,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
