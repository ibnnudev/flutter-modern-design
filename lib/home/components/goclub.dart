import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:moderndesign/theme.dart';

class GoClubComponent extends StatelessWidget {
  const GoClubComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 19),
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFEAF3F6), Color(0xFFFFFFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color(0xFFE8E8E8)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              // 🎨 Background dots
              Positioned(
                left: 8,
                top: 4,
                bottom: 4,
                child: Opacity(
                  opacity: 1,
                  child: SvgPicture.asset(
                    'assets/icons/dots.svg',
                    fit: BoxFit.none,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/star.svg',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 16),

                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '117 XP lagi ada Harta Karun',
                                style: semibold14.copyWith(color: dark1),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),

                              SizedBox(
                                width: 209,
                                child: LinearProgressBar(
                                  maxSteps: 6,
                                  currentStep: 3,
                                  progressType: ProgressType.linear,
                                  progressColor: green1,
                                  backgroundColor: Color(0xFFBBBBBB),
                                  minHeight: 4,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    SizedBox(width: 24),
                    SvgPicture.asset(
                      'assets/icons/left.svg',
                      color: dark1,
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
