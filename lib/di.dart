// ignore_for_file: avoid_classes_with_only_static_members

import 'package:app/providers/api_repository.dart';
import 'package:app/providers/dio_provider.dart';
import 'package:app/shared/services/storage_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => LocalStorage().init());
    Get.put<DioProvider>(DioProvider());
    Get.put<ApiRepository>(ApiRepository(apiProvider: Get.find()),
        permanent: true);
    Get.put<Connectivity>(Connectivity(), permanent: true);
    // Get.put<NotificationController>(NotificationController(), permanent: true);
  }
}
