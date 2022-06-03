part of isdp_vasa;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(LoginController());

    return GetBuilder<LoginController>(
        builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          leading: const BackButton( color: Colors.black, ),
        ),
        body: Container(
          color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

                Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 30,
                      left: 10
                    ),
                    child: Text('Login', style: TextStyle(
                      fontSize: 30,
                    ),
                    ),
                  ),
                ),

                //Email
                Form(
                  key: controller.emailFormKey,
                  child: TextFormField(
                    controller: controller.emailController,
                    cursorColor: Colors.black,
                    cursorWidth: 1,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Email Is Required';
                      else
                        return GetUtils.isEmail(value)
                            ? null
                            : 'Invalid Email';

                    },
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
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
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                    ],
                  ),
                ),

                SizedBox(height: 20,),
                Form(
                    key: controller.passwordFormKey,
                    child: TextFormField(
                      controller: controller.passwordController,
                      cursorColor: Colors.black,
                      cursorWidth: 1,
                      validator: (value) {
                        return value == null || value.isEmpty
                            ? 'Password Is Required'
                            : value.length > 5
                            ? null
                            : 'Invalid password length';
                      } ,
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      autovalidateMode: AutovalidateMode.disabled,
                      obscureText: true,
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
                        labelText: "Password".tr,
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    )
                ),
                SizedBox(height: 20,),

                Button(
                    text: 'Login',
                    onPressed: () async {
                      controller.logIn();
                    }
                )



              ],
            )
        )
      );
        }
        );

  }
}
