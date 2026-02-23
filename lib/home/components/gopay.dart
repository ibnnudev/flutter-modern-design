import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moderndesign/datas/icons.dart';
import 'package:moderndesign/theme.dart';

class GopayComponent extends StatelessWidget {
  const GopayComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                height: 96.0,
                decoration: BoxDecoration(
                  color: blue1,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Slider
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2.0,
                            height: 8.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF0BBBBB),
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Container(
                            width: 2.0,
                            height: 8.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Content Slider
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 11,
                            width: 118,
                            decoration: const BoxDecoration(
                              color: Color(0xFF09CCDDB),
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(8),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 8,
                            ),
                            height: 73,
                            width: 127,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/gopay.png',
                                  height: 14,
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Rp12.379',
                                  style: bold16.copyWith(color: dark1),
                                ),
                                Text(
                                  'Klik & Cek Riwayat',
                                  style: semibold12_5.copyWith(color: green1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Icons
                    ...gopayIcons.map(
                      (icon) => Flexible(
                        fit: FlexFit.tight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/${icon.icon}.svg',
                                colorFilter: ColorFilter.mode(
                                  blue1,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              icon.title,
                              style: semibold14.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          
  }
}