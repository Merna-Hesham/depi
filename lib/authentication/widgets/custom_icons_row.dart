import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconsRow extends StatelessWidget {
  const CustomIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),

        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: BoxBorder.all(
                    color: Colors.black26,
                    width: 1.5
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/icons/f.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ),

            SizedBox(width: 10,),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: BoxBorder.all(
                        color: Colors.black26,
                        width: 1.5
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/icons/google.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ),

            SizedBox(width: 10,),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: BoxBorder.all(
                        color: Colors.black26,
                        width: 1.5
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/icons/apple.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 20,),
      ],
    );
  }
}
