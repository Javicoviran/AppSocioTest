import 'package:intl/intl.dart';

String formatDate(int mils, [bool utc = true]) => DateFormat('dd/MM/yyyy').format(DateTime.fromMillisecondsSinceEpoch(mils, isUtc: utc));
