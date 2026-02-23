import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:moderndesign/home/components/goclub.dart';
import 'package:moderndesign/home/components/gopay.dart';
import 'package:moderndesign/home/components/search-profile.dart';
import 'package:moderndesign/home/components/service.dart';
import 'package:moderndesign/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: green1,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  'Beranda',
                  style: semibold14.copyWith(color: green1),
                ),
              ),
              ...['Promo', 'Pesanan', 'Chat'].map(
                (title) => Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Center(
                      child: Text(
                        title,
                        style: semibold14.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchProfileComponent(),
            GopayComponent(),
            ServiceComponent(),
            GoClubComponent()
          ],
        ),
      ),
    );
  }
}
