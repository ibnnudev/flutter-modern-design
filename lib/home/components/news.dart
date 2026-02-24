import 'package:flutter/material.dart';
import 'package:moderndesign/datas/news.dart';
import 'package:moderndesign/theme.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Column(
        children: news.map((item) => Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: item == news.last ? 0 : 16),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE8E8E8)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15))
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset('assets/images/${item.image}'),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 24,
                  left: 24,
                  right: 24,
                  bottom: 30
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.title, style: bold16),
                    SizedBox(height: 8),
                    Text(item.description, style: regular14.copyWith(color: dark2),)
                  ],
                ),
              )
            ],
          ),
        )).toList(),
      ),
    );
  }
}