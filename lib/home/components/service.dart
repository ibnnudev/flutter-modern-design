import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moderndesign/datas/icons.dart';
import 'package:moderndesign/theme.dart';

class ServiceComponent extends StatelessWidget {
  const ServiceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 32, left: 27, right: 27),
    child: Wrap(
      spacing: 53,
      runSpacing: 29,
      children: [
        ...menuIcons.map((icon) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: icon.icon == 'goclub' ? null : icon.icon == 'other' ? dark4 : icon.color,
                borderRadius: BorderRadius.circular(100)
              ),
              child: SvgPicture.asset('assets/icons/${icon.icon}.svg',
              colorFilter: ['goclub', 'other'].contains(icon.icon) ? ColorFilter.mode(icon.color ?? Colors.black, BlendMode.srcIn) : null,
              ),
            ),
            SizedBox(height: 9),
            Text(icon.title, style: regular12_5.copyWith(color: dark2),)
          ],
        ))
      ],
    )
    );
  }
}
