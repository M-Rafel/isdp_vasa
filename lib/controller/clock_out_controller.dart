part of isdp_vasa;

class ClockOutController extends GetxController {

  var progressController = TextEditingController();
  final progressFormKey = GlobalKey<FormState>();

  var teamLeaderController = TextEditingController();
  final teamLeaderFormKey = GlobalKey<FormState>();

  var siteNameController = TextEditingController();
  final siteNameFormKey = GlobalKey<FormState>();
  int noOfImages = 0;


}