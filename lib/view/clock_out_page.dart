part of isdp_vasa;

class ClockOutPage extends StatelessWidget {
  const ClockOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(ClockOutController());
    HomeController homeController = Get.find();

    return GetBuilder<ClockOutController>(
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Clock-Out",
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.black),
              actions: [

                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.account_circle),
                  ),
                ),

                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.list_alt),
                  ),
                ),

              ],
            ),
            body: Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Stack(
                              children: [
                                Form(
                                    key: controller.teamLeaderFormKey,
                                    child: TextFormField(
                                      controller: controller.teamLeaderController,
                                      cursorColor: Colors.black,
                                      cursorWidth: 1,
                                      validator: (value) {
                                        if(value == null || value.isEmpty)
                                          return "Team leader name required";
                                        else return null;
                                      },
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        errorStyle: TextStyle(
                                            color: Keys.errorColor, fontSize: 10),
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 15.0),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        labelText: "Team Leader Name",
                                        labelStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        //if (controller.isFormValidated)
                                        controller.teamLeaderFormKey.currentState!
                                            .validate();
                                      },
                                    )
                                ),

                                controller.teamLeaderController.text.isEmpty ? Container() :
                                Container(
                                    padding: EdgeInsets.only(top: 15, right: 10),
                                    child:
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Spacer(),
                                          GestureDetector(
                                              onTap: () {
                                                controller.teamLeaderController.text = "";
                                                FocusScope.of(context).unfocus();
                                                controller.update();
                                              },
                                              child: const Icon(
                                                  Icons.close_rounded,
                                                  color: Colors.grey,
                                                  size: 18
                                              )
                                          ),
                                        ]
                                    )
                                )

                              ],
                            )
                        ),
                        SizedBox(height: 5,),

                        Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Stack(
                              children: [
                                Form(
                                    key: controller.siteNameFormKey,
                                    child: TextFormField(
                                      controller: controller.siteNameController,
                                      cursorColor: Colors.black,
                                      cursorWidth: 1,
                                      validator: (value) {
                                        if(value == null || value.isEmpty)
                                          return "Site name required";
                                        else return null;
                                      },
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        errorStyle: TextStyle(
                                            color: Keys.errorColor, fontSize: 10),
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 15.0),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        labelText: "Site Name",
                                        labelStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        //if (controller.isFormValidated)
                                        controller.siteNameFormKey.currentState!
                                            .validate();
                                      },
                                    )
                                ),

                                controller.siteNameController.text.isEmpty ? Container() :
                                Container(
                                    padding: EdgeInsets.only(top: 15, right: 10),
                                    child:
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Spacer(),
                                          GestureDetector(
                                              onTap: () {
                                                controller.siteNameController.text = "";
                                                FocusScope.of(context).unfocus();
                                                controller.update();
                                              },
                                              child: const Icon(
                                                  Icons.close_rounded,
                                                  color: Colors.grey,
                                                  size: 18
                                              )
                                          ),
                                        ]
                                    )
                                )

                              ],
                            )
                        ),
                        SizedBox(height: 5,),

                        Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Stack(
                              children: [
                                Form(
                                    key: controller.progressFormKey,
                                    child: TextFormField(
                                      controller: controller.progressController,
                                      cursorColor: Colors.black,
                                      cursorWidth: 1,
                                      validator: (value) {
                                        if(value == null || value.isEmpty)
                                          return "Progress required";
                                        else return null;
                                      },
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        errorStyle: TextStyle(
                                            color: Keys.errorColor, fontSize: 10),
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 15.0),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12),),
                                        labelText: "Progress",
                                        labelStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        //if (controller.isFormValidated)
                                        controller.progressFormKey.currentState!
                                            .validate();
                                      },
                                    )
                                ),

                                controller.progressController.text.isEmpty ? Container() :
                                Container(
                                    padding: EdgeInsets.only(top: 15, right: 10),
                                    child:
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Spacer(),
                                          GestureDetector(
                                              onTap: () {
                                                controller.progressController.text = "";
                                                FocusScope.of(context).unfocus();
                                                controller.update();
                                              },
                                              child: const Icon(
                                                  Icons.close_rounded,
                                                  color: Colors.grey,
                                                  size: 18
                                              )
                                          ),
                                        ]
                                    )
                                )

                              ],
                            )
                        ),
                        SizedBox(height: 5,),

                        Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 6,
                              child: InkWell(
                                onTap: (){

                                },
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0,10,20,10),
                                  child: Row(
                                    mainAxisAlignment:  MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.add_circle_outline,
                                        color: Keys.primaryColor,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Text('Add Images', style: TextStyle(
                                            color: Keys.primaryColor, fontSize: 16)),
                                      ),
                                      //Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Flexible(
                                fit: FlexFit.tight,
                                flex: 4,
                                child:
                                Text(
                                    "${controller.noOfImages} images added"
                                )
                            ),

                          ],
                        ),
                        SizedBox(height: 25,),

                        Button(
                          text: 'Clock Out',
                          onPressed: () async {

                          },
                        ),
                      ],
                    )
                )

            ),

          );
        }
    );
  }
}
