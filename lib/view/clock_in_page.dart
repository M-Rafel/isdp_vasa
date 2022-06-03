part of isdp_vasa;

class ClockInPage extends StatelessWidget {
  const ClockInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(ClockInController());
    HomeController homeController = Get.find();

    return GetBuilder<ClockInController>(
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Clock-In",
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.black),
              actions: [

                Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(homeController.userName ?? 'Login'),
                            SizedBox(width: 5,),
                            Icon(Icons.account_circle)

                          ])),

              ],
            ),
            body: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(20,20,20,0),
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
                                  key: controller.dailyTaskFormKey,
                                  child: TextFormField(
                                    controller: controller.dailyTaskController,
                                    cursorColor: Colors.black,
                                    cursorWidth: 1,
                                    validator: (value) {
                                      if(value == null || value.isEmpty)
                                        return "Daily task required";
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
                                      labelText: "Daily Task",
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    onChanged: (value) {
                                      //if (controller.isFormValidated)
                                      controller.dailyTaskFormKey.currentState!
                                          .validate();
                                    },
                                  )
                              ),

                              controller.dailyTaskController.text.isEmpty ? Container() :
                              Container(
                                  padding: EdgeInsets.only(top: 15, right: 10),
                                  child:
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Spacer(),
                                        GestureDetector(
                                            onTap: () {
                                              controller.dailyTaskController.text = "";
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
                                  key: controller.noOfWorkFormKey,
                                  child: TextFormField(
                                    controller: controller.noOfWorkController,
                                    cursorColor: Colors.black,
                                    cursorWidth: 1,
                                    validator: (value) {
                                      if(value == null || value.isEmpty)
                                        return "Number of Works required";
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
                                      labelText: "No. of Works",
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    onChanged: (value) {
                                      //if (controller.isFormValidated)
                                      controller.noOfWorkFormKey.currentState!
                                          .validate();
                                    },
                                  )
                              ),

                              controller.noOfWorkController.text.isEmpty ? Container() :
                              Container(
                                  padding: EdgeInsets.only(top: 15, right: 10),
                                  child:
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Spacer(),
                                        GestureDetector(
                                            onTap: () {
                                              controller.noOfWorkController.text = "";
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
                              flex: 4,
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text('Workers :'),
                              ),
                          ),

                          Flexible(
                            fit: FlexFit.tight,
                            flex: 6,
                            child:

                            InkWell(
                              onTap: (){
                                applyWorker(context);
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
                                      child: Text('Add worker', style: TextStyle(
                                          color: Keys.primaryColor, fontSize: 16)),
                                    ),
                                    //Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 5,),


                      Container(
                        height: 150,
                        child: _buildTextForm(
                            text: "Description",
                            labelText: 'Description',
                            errorMessage: 'Description required',
                            textInputType: TextInputType.text,
                            onChanged: (value) =>
                            controller.description = value,
                            enableMaxLine: true),
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
                                      child: Text('Add Workers Images', style: TextStyle(
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
                                        child: Text('Add Tool Images', style: TextStyle(
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
                                        child: Text('Add Site Images', style: TextStyle(
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
                        text: 'Clock In',
                        onPressed: () async {

                        },
                      ),

                      SizedBox(height: 10,),
                    ],
                  )
                )

            ),

          );
        }
    );
  }

  Widget _buildTextForm(
      {String? text,
        String? labelText,
        String? errorMessage,
        required TextInputType textInputType,
        required Function(String value) onChanged,
        int maxLength = 3,
        bool enableMaxLine = false}) {
    return TextFormField(
      cursorColor: Colors.black,
      cursorWidth: 1,
      validator: (value) {
        if (value == null ||
            (GetUtils.isNullOrBlank(value) != null &&
                GetUtils.isNullOrBlank(value) == true)) {
          return errorMessage;
        }
        if (textInputType == TextInputType.emailAddress)
          return GetUtils.isEmail(value) ? null : 'Invalid $labelText';
        else if (textInputType == TextInputType.name) {
          if (!RegExp('^[a-zA-Z ]*\$').hasMatch(value))
            return '$labelText can only be alphabet (A-z a-z)';
          if (!GetUtils.isLengthGreaterOrEqual(value, maxLength))
            return '$labelText must be greater than 3 characters';
        }
      },
      keyboardType: textInputType,
      maxLines: enableMaxLine ? 100 : 1,
      autofocus: false,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: labelText,
        errorStyle: TextStyle(
          color: Keys.errorColor,
          fontSize: 10,
        ),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        labelStyle: TextStyle(
          color: text != null && text.isNotEmpty
              ? Colors.grey.shade800
              : Colors.grey.shade500,
          fontSize: 14,
          fontFamily: 'Roboto',
        ),
      ),
      onChanged: (value) {
        text = value;
        onChanged.call(value);
      },
    );
  }
}

applyWorker(context) async {
  final _formKey = GlobalKey<FormState>();

  var fullNameController = TextEditingController();
  var phoneNumberController = TextEditingController();

  int noOfImages = 0;
  await showDialog(
      context: context,
      builder: (contexts){
        return
          Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SingleChildScrollView( child:
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10),
                        child: Text(
                          'Add Worker',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Keys.emphasisTextColor
                          ),
                        )
                    ),
                    Divider(),

                    Form(
                      key: _formKey,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Column(
                              children: [
                                TextFormField(
                                  controller: fullNameController,
                                  cursorColor: Colors.black,
                                  cursorWidth: 1,
                                  validator: (value) {
                                    return value == null || value.isEmpty
                                        ? 'Full Name is required'
                                        : value.length > 1
                                        ? null
                                        : 'Invalid Full Name';
                                  },
                                  autofocus: false,
                                  keyboardType: TextInputType.text,
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
                                    labelText: "Full Name",
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                                  ],
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                ),
                                SizedBox(height: 10),

                                TextFormField(
                                  controller: phoneNumberController,
                                  cursorColor: Colors.black,
                                  cursorWidth: 1,
                                  validator: (value) {

                                      if (value == null || value.isEmpty)
                                        return null;
                                      else
                                        return GetUtils.isPhoneNumber(
                                            value)
                                            ? null
                                            : 'Invalid Phone Number';

                                  },
                                  autofocus: false,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    errorStyle: TextStyle(
                                        color: Keys.errorColor,
                                        fontSize: 10),
                                    isDense: true,
                                    contentPadding:
                                    EdgeInsets.symmetric(
                                        vertical: 5,
                                        horizontal: 15.0),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12),),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12),),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12),),
                                    labelText: "Phone Number (optional)",
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter
                                        .digitsOnly,
                                    FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                                  ],
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                ),

                                SizedBox(height: 20),

                                Button(
                                  text: "Add",
                                  onPressed: () async {
                                    FocusScope.of(context).unfocus();

                                    if(_formKey.currentState!.validate()) {

                                    }

                                  },
                                )
                              ]
                          )
                      ),
                    ),
                  ],
                ),
                ),
              )
          );
      });

}
