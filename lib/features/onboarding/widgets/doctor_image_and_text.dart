import 'package:flutter/material.dart';
   import 'package:flutter_project_omar/core/theming/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_logo_low_opacity.svg',
          fit: BoxFit.cover,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white.withOpacity(0.0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4])),
          child: Image.asset('assets/images/doctor_image.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: TextStyles.font32blueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
