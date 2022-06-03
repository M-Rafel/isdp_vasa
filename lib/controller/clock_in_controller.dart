part of isdp_vasa;

class ClockInController extends GetxController {
  var siteNameController = TextEditingController();
  final siteNameFormKey = GlobalKey<FormState>();

  var noOfWorkController = TextEditingController();
  final noOfWorkFormKey = GlobalKey<FormState>();

  var dailyTaskController = TextEditingController();
  final dailyTaskFormKey = GlobalKey<FormState>();

  var teamLeaderController = TextEditingController();
  final teamLeaderFormKey = GlobalKey<FormState>();

  String? description;
  int noOfImages = 0;
  List<String> workers = [];
}