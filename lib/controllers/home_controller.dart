import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:vpn_basic_project/models/vpn_info.dart';
import 'package:vpn_basic_project/preferences/app_preferences.dart';

class HomeController extends GetxController {
  final Rx<VpnInfo> vpnInfo = AppPreferences.VpnInfoObject.obs;
}
