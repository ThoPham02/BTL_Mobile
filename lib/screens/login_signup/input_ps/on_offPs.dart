import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HiddenPs extends StatefulWidget {
  final ValueChanged<bool> onVisibilityChanged;

  const HiddenPs({Key? key, required this.onVisibilityChanged})
      : super(key: key);

  @override
  State<HiddenPs> createState() => _HiddenPsState();
}

class _HiddenPsState extends State<HiddenPs> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return GestureDetector(
      onTap: () {
        setState(() {
          isPasswordVisible = !isPasswordVisible;
          widget.onVisibilityChanged(isPasswordVisible);
        });
      },
      child: SizedBox(
        width: 22.13 * fem,
        height: 22 * fem,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              isPasswordVisible
                  ? 'assets/vectors/eye.svg'
                  : 'assets/vectors/eye_off.svg',
            ),
          ],
        ),
      ),
    );
  }
}
