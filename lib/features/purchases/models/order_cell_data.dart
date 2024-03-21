class OrderCellData {
  // SHOPID
  final String shopId;
  final int date;
  final bool state;
  final int orderId;
  final int issue;
  final double ns;

  OrderCellData({
    required this.shopId,
    required this.date,
    required this.state,
    required this.orderId,
    required this.issue,
    required this.ns,
  });
}
