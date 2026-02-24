import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moderndesign/theme.dart';

class QuickAccessComponent extends StatelessWidget {
  const QuickAccessComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Akses Cepat', style: bold18.copyWith(color: dark1)),
          ),
          SizedBox(height: 4),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0XFFE8E8E8)),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                final titles = [
                  'Pintu masuk motor, MNC Land',
                  'Pintu masuk mobil, MNC Land',
                ];

                return Padding(
                  padding: EdgeInsets.only(
                    bottom: index == titles.length - 1 ? 0 : 22,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: green2,
                        ),
                        child: SvgPicture.asset('assets/icons/goride.svg'),
                      ),
                      const SizedBox(width: 12.0),
                      Text(
                        titles[index],
                        style: regular14.copyWith(color: dark2),
                      ),
                      const Spacer(),
                      SvgPicture.asset('assets/icons/left.svg', color: dark1),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
