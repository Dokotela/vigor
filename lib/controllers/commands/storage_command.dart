import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageCommand extends GetxController {
  static StorageCommand get to => Get.find();
  final GetStorage store = GetStorage();

  bool isFirstLoad = true;

  @override
  void onReady() {
    getFirstLoadInfoFromStore();
    super.onReady();
  }

  void getFirstLoadInfoFromStore() =>
      isFirstLoad = store.read('isFirstLoad') ?? true;

  Future<void> saveFirstLoadInfoToStore(bool newValue) async {
    isFirstLoad = newValue;
    await store.write('isFirstLoad', newValue);
  }
}
