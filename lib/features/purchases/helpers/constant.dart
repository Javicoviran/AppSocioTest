import 'package:app_socio_test/features/purchases/models/meat.dart';
import 'package:app_socio_test/features/purchases/models/order.dart';
import 'package:app_socio_test/features/purchases/models/transport.dart';

List<Order> data = [
  Order(shopId: "383", date: 1000198005, state: true, orderId: 8798798, issue: 0, ns: 0.0),
  Order(shopId: "383", date: 1000198005, state: true, orderId: 8888887, issue: 6, ns: 0.0),
  Order(shopId: "383", date: 1000198005, state: false, orderId: 8888883, issue: 0, ns: 0.0),
  Order(shopId: "383", date: 1000198005, state: true, orderId: 8888881, issue: 3, ns: 0.0),
];

List<String> orderColumns = [
  "Tienda",
  "Fecha",
  "Estado",
  "Pedido",
  "IN",
  "NS",
];

List<MeatOrder> data1 = [
  MeatOrder(shopId: "383", date: 1000198005, state: true, meatOrderId: 5661),
  MeatOrder(shopId: "383", date: 1000198005, state: true, meatOrderId: 666),
  MeatOrder(shopId: "383", date: 1000198005, state: false, meatOrderId: 777),
  MeatOrder(shopId: "383", date: 1000198005, state: true, meatOrderId: 333),
];

List<String> meatColumns = [
  "Orden",
  "Fecha",
  "Estado",
  "Tienda",
];

List<TransportOrder> data2 = [
  TransportOrder(shopId: "383", date: 1000198005, trans: 5661, detail: "Hora apróximada de llegada 0:75 a 383"),
];

List<String> transportColumns = [
  "Trans",
  "Fecha",
  "Tienda",
  "Detalle",
];
