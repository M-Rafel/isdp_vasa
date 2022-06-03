part of isdp_vasa;

typedef ButtonCallback = Future Function();

class Button extends StatelessWidget {
  final String text;
  final double minWidth;
  final double borderRadius;
  final ButtonCallback onPressed;

  final bool checkConnectivity;
  final bool showLoading;
  final String? loadingMessage;

  Button({required this.text, required this.onPressed, this.minWidth = double.infinity,
    this.checkConnectivity = true, this.showLoading =true, this.loadingMessage, this.borderRadius = 5});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
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
      elevation: 1,
      height: 50,
      minWidth: minWidth,
      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(borderRadius),
      ),
      color: Colors.blueGrey,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
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

