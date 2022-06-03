part of isdp_vasa;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(HomeController());

    return GetBuilder<HomeController>(
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              // title: Text(
              //   "Hello there !",
              //   style: TextStyle(color: Colors.black),
              // ),
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.black),
              actions: [
                InkWell(
                  onTap: () {
                    Get.to(() => LoginPage(),
                        transition: Transition.cupertino);
                  },
                  child: Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                controller.userName ?? 'Login',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 5,),
                            Icon(Icons.account_circle)

                          ])),
                )
              ],
            ),
            body: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button(
                        text: 'Clock In',
                        onPressed: () async {
                         Get.to(() => ClockInPage());
                        },
                      checkConnectivity: false,
                    ),

                    SizedBox(height: 20,),
                    SecondaryButton(
                        text: 'Clock Out',
                        onPressed: () async {
                          Get.to(() => ClockOutPage());
                        },
                      checkConnectivity: false,
                    )
                  ],
                )
            ),
            drawer: Drawer(
              elevation: 0,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    height: 100,
                    child: DrawerHeader(
                        child: Column(
                          children: [
                            Icon(Icons.account_circle),
                            SizedBox(height: 10,),
                            Text("Welcome ${controller.userName ?? ""}")
                          ],
                        ),
                        decoration: BoxDecoration(color: Colors.white),
                        margin: EdgeInsets.only(bottom: 0),
                        // padding: EdgeInsets.only(left: 20.0)
                      ),
                  ),
                  ListTile(
                    title: const Text('Clock In'),
                    leading: Icon(Icons.history),
                    onTap: () {
                      Get.back();
                      Get.to(() => ClockInPage());
                      //     transition: Transition.cupertino);
                    },
                  ),
                  ListTile(
                    title: const Text('Clock Out'),
                    leading: Icon(Icons.history),
                    onTap: () {
                      Get.back();
                      Get.to(() => ClockOutPage());
                      //     transition: Transition.cupertino);
                    },
                  ),

                  ListTile(
                    title: const Text('Recent reports'),
                    leading: Icon(Icons.history),
                    onTap: () {
                      Get.back();
                      Get.to(() => ReportListPage(),
                          transition: Transition.cupertino);
                    },
                  ),

                  Divider(),

                  ListTile(
                    title: const Text('Help'),
                    leading: Icon(Icons.history),
                    onTap: () {
                      Get.back();
                      // Get.to(() => MyRidePage(),
                      //     transition: Transition.cupertino);
                    },
                  ),
                  ListTile(
                    title: const Text('Contact us'),
                    leading: Icon(Icons.history),
                    onTap: () {
                      Get.back();
                      // Get.to(() => MyRidePage(),
                      //     transition: Transition.cupertino);
                    },
                  ),

                ],
              ),
            ),
          );
        }
    );
  }
}
