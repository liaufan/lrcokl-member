import 'package:get/get.dart';
import 'package:lrcokl/controllers/authentication.controller.dart';

class GetInitializer extends Bindings {
  @override
  void dependencies() {
    // these controllers are yet to be initiallized
    // they will be initialized when they are referenced
    Get.put<AuthenticationController>(AuthenticationController());
  }
}
