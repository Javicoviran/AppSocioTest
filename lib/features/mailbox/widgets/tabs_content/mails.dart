import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

final List<MailsItem> newsList = [
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  const MailsItem(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
];

class Mails extends StatelessWidget {
  const Mails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hJM(100) - CommonTheme.baseBarHeight,
      child: ListView.separated(
        itemCount: newsList.length,
        scrollDirection: Axis.vertical,
        separatorBuilder: (_, __) => Divider(height: hJM(0), color: CommonTheme.dividerColor),
        itemBuilder: (BuildContext context, int index) {
          return Material(
            child: newsList.elementAt(index),
          );
        },
      ),
    );
  }
}

class MailsItem extends StatelessWidget {
  final int date;
  final String title;
  final String body;
  const MailsItem({super.key, required this.date, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wJM(5), vertical: hJM(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: wJM(15),
            child: Text(
              formatDate(date),
              style: const TextStyle(
                color: AppColors.gray,
              ),
            ),
          ),
          SizedBox(
            width: wJM(70),
            child: Column(
              children: [
                Text(
                  body,
                  style: CommonTheme.bodyLarge.copyWith(
                    color: AppColors.green900,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  title,
                  style: CommonTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
