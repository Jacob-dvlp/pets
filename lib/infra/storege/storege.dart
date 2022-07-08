import 'package:get_storage/get_storage.dart';

class StoregeData {
  final storege = GetStorage();

  String persistenceLoginRead(String value) => storege.read('email') ?? '';

  writeData(String value) async => await storege.write('email', value);
  removeEmail() async => await storege.remove('email');
}
