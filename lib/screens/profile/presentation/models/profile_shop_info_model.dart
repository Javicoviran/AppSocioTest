import 'package:app_socio_test/screens/profile/presentation/models/base_contact.dart';
import 'package:app_socio_test/screens/profile/presentation/models/invent_location_model.dart';

class ProfileShopInfoModel {
  final String imageUrl;
  final String name;
  final String accountNumber;
  final String address;
  final String phoneNumber;
  final InventLocationModel inventLocation;
  final String softwareType;
  final String softwareVersion;
  final bool ncc;
  final String nccOpeningDate;
  final String salesRoomSize;
  final String warehouseSize;
  final String basementSize;
  final int employees;
  final String pvpr;
  final BaseContact covContact;
  final BaseContact manager;
  final BaseContact cascContact;

  ProfileShopInfoModel({
    required this.imageUrl,
    required this.name,
    required this.accountNumber,
    required this.address,
    required this.phoneNumber,
    required this.inventLocation,
    required this.softwareType,
    required this.softwareVersion,
    required this.ncc,
    required this.nccOpeningDate,
    required this.salesRoomSize,
    required this.warehouseSize,
    required this.basementSize,
    required this.employees,
    required this.pvpr,
    required this.covContact,
    required this.manager,
    required this.cascContact,
  });
}
