part of isdp_vasa;

class SecondaryButton extends StatelessWidget {

  final String text;
  final double minWidth;
  final double borderRadius;
  final ButtonCallback onPressed;

  final bool checkConnectivity;
  final bool showLoading;
  final String? loadingMessage;

  SecondaryButton({required this.text,required this.onPressed, this.minWidth = double.infinity,
    this.checkConnectivity = true, this.showLoading =true, this.loadingMessage, this.borderRadius = 5});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: minWidth,
      height: 45,
      child:   ElevatedButton(
        child: Text( text,
          style: const TextStyle(
            color: Keys.primaryColor,
            fontSize: 16,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          side: MaterialStateProperty.all(
              BorderSide(
                color: Keys.primaryColor,
                style: BorderStyle.solid,
                width: 1.8,
              )
          ),
        ),
        onPressed: () async {
          if(checkConnectivity){
            if(Internet.isConnected()){
              await callOnPressed();
            }
            else{
              Message.noConnectionMessage();
            }
          }
          else{
            await callOnPressed();
          }
        },
      ),
    );
  }

  callOnPressed() async{
    if(showLoading){
      EasyLoading.show(status: loadingMessage);
      await onPressed.call();
      EasyLoading.dismiss();
    }
    else{
      await onPressed.call();
    }
  }
}