part of isdp_vasa;

class ReportListPage extends StatelessWidget {
  const ReportListPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Get.put(ReportListController());

    return GetBuilder<ReportListController>(
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Recent reports",
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            body: Container(
                color: Colors.white,
                child:
                  controller.reports.length > 0 ?
                    ListView.builder(
                        itemCount: controller.reports.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // color: Keys.backgroundColor,
                        height: 160,
                        child:
                        Card(
                            color: Colors.white,
                            elevation: 3,
                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))
                            ),
                            child: InkWell(
                                    onTap: () async {
                                      try{
                                      }
                                      catch(ex,stack)  {
                                      }
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(20,15,10,15),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  DateFormat("MMMM dd").format(DateTime.now()),
                                                  textAlign: TextAlign.start,
                                                  maxLines: 2,
                                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                ),
                                                Spacer(),

                                                InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Text(
                                                    "Remove",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.blue
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),

                                            SizedBox(height: 10,),

                                            Divider(),
                                            SizedBox(height: 10,),

                                            Row(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: "Clock-In : ",
                                                    style: TextStyle(fontSize: 18, color: Colors.black),
                                                    children:[
                                                      TextSpan(
                                                         text: "08:34",style: TextStyle(fontSize: 18, color: Keys.primaryColor),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),

                                                InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Text(
                                                    "Open",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.blue
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: "Clock-Out : ",
                                                    style: TextStyle(fontSize: 18, color: Colors.black),
                                                    children:[
                                                      TextSpan(
                                                        text: "05:34",style: TextStyle(fontSize: 18, color: Keys.primaryColor),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Text(
                                                    "Open",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.blue
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ]
                                      ),
                                    ))

                        ),

                      );
                    })
                      : Center(
                    child: Text(
                      "You have no recent reports so far."
                    ),
                  )
            ),
          );
        }
    );
}
}
