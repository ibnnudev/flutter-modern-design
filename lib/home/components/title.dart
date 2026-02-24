import 'package:flutter/material.dart';
import 'package:moderndesign/theme.dart';

class TitleComponent extends StatelessWidget {
  const TitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32, left: 20, right: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/gopay.png', height: 14,),
            SizedBox(height: 8,),
            Text('Lebih hemat pake GoPayLater 🤩', style: bold16.copyWith(color: dark1),),
            SizedBox(height: 8,),
            Text('Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~', style: regular14.copyWith(color: dark2)),
          ],
        ),
      ),
    );
  }
}