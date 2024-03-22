import 'package:app_socio_test/features/home/presentation/models/shop_contact_model.dart';
import 'package:app_socio_test/features/home/presentation/models/shop_invent_location_model.dart';

class ShopInfoModel {
  final String accountNumber;
  final String address;
  final String phoneNumber;
  final ShopInventLocationModel inventLocation;
  final String software;
  final String softwareVersion;
  final bool ncc;
  final String nccOpenDate;
  final String salesRoomSpace;
  final String warehouseSpace;
  final String secondWarehouseSpace;
  final String basementSpace;
  final String employees;
  final String pvpr;
  final ShopContactModel covContact;
  final ShopContactModel storeManagerContact;
  final ShopContactModel cascContact;
  final List<String> services;

  ShopInfoModel({
    required this.accountNumber,
    required this.address,
    required this.phoneNumber,
    required this.inventLocation,
    required this.software,
    required this.softwareVersion,
    required this.ncc,
    required this.nccOpenDate,
    required this.salesRoomSpace,
    required this.warehouseSpace,
    required this.secondWarehouseSpace,
    required this.basementSpace,
    required this.employees,
    required this.pvpr,
    required this.covContact,
    required this.storeManagerContact,
    required this.cascContact,
    required this.services,
  });
}
