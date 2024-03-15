import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

final List<NewsItem> newsList = [
  const NewsItem(date: 1, title: "title", body: "body"),
  const NewsItem(date: 1, title: "title", body: "body"),
  const NewsItem(date: 1, title: "title", body: "body"),
  const NewsItem(date: 1, title: "title", body: "body"),
  const NewsItem(date: 1, title: "title", body: "body"),
  const NewsItem(date: 1, title: "title", body: "body"),
  const NewsItem(date: 1, title: "title", body: "body"),
  const NewsItem(date: 1, title: "title", body: "body"),
  const NewsItem(date: 1, title: "title", body: "body"),
];

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hJM(100),
      child: ListView.separated(
        itemCount: newsList.length,
        padding: EdgeInsets.all(wJM(4)),
        scrollDirection: Axis.vertical,
        separatorBuilder: (_, __) => Divider(height: hJM(2), color: CommonTheme.dividerColor),
        itemBuilder: (BuildContext context, int index) {
          return Material(
            child: newsList.elementAt(index),
          );
        },
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final int date;
  final String title;
  final String body;
  const NewsItem({super.key, required this.date, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: wJM(2), horizontal: wJM(2)),
      padding:  EdgeInsets.all(wJM(2)),
      decoration: BoxDecoration(
        color: AppColors.green50,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              body,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[800],
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Date: $date', // Assuming date is in a readable format
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
