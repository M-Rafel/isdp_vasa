part of isdp_vasa;

class ReportListController extends GetxController {

  List<String> reports = [];

  ReportListController() {
    reports = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    update();
  }
}