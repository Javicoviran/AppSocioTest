import 'package:app_socio_test/features/mailbox/models/notifications_item_view_model.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

final List<NotificationsItemViewModel> notificationsList = [
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
  NotificationsItemViewModel(
    date: 669375621000,
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec sem nisi. Ut venenatis tempor finibus. Ut vel metus ultrices, rutrum lectus ac, dapibus nisl.",
  ),
];

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hJM(100) - CommonTheme.baseBarHeight,
      child: ListView.separated(
        itemCount: notificationsList.length,
        scrollDirection: Axis.vertical,
        separatorBuilder: (_, __) => Divider(height: hJM(0), color: CommonTheme.dividerColor),
        itemBuilder: (BuildContext context, int index) {
          return Material(
            child: _NotificationsItem(notificationsItemViewModel: notificationsList[index]),
          );
        },
      ),
    );
  }
}

class _NotificationsItem extends StatelessWidget {
  final NotificationsItemViewModel notificationsItemViewModel;
  const _NotificationsItem({
    required this.notificationsItemViewModel,
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
              formatDate(notificationsItemViewModel.date),
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
                  notificationsItemViewModel.body,
                  style: CommonTheme.bodyLarge.copyWith(
                    color: CommonTheme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  notificationsItemViewModel.title,
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
