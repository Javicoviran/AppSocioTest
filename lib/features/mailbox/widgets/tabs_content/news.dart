import 'package:app_socio_test/features/mailbox/models/news_item_view_model.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

final List<NewsItemViewModel> newsList = [
  NewsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NewsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NewsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NewsItemViewModel(
      date: 669375621000,
      title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl."),
  NewsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NewsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NewsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NewsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NewsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
];

class News extends StatelessWidget {
  const News({super.key});

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
            child: NewsItem(newsItemViewModel: newsList[index]),
          );
        },
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final NewsItemViewModel newsItemViewModel;
  const NewsItem({
    super.key,
    required this.newsItemViewModel,
  });

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
              formatDate(newsItemViewModel.date),
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
                  newsItemViewModel.body,
                  style: CommonTheme.bodyLarge.copyWith(
                    color: CommonTheme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  newsItemViewModel.title,
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
