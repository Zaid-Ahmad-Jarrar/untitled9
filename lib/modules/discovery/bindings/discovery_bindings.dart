import 'package:get/get.dart';
import 'package:untitled9/modules/discovery/controller/discovery_controller.dart';

class DiscoveryBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => DiscoveryController());
  }

}