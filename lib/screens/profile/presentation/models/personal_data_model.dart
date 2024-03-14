import 'package:app_socio_test/screens/profile/presentation/models/base_contact.dart';

class PersonalDataModel {
  final String name;
  final String businessName;
  final String address;
  final String phoneNumber;
  final String email;
  final BaseContact covContact;
  final String nif;

  PersonalDataModel({
    required this.name,
    required this.businessName,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.covContact,
    required this.nif,
  });
}
