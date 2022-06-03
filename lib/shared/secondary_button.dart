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
      child:   OutlineButton(
        child: Text( text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        borderSide: BorderSide(
          color: Colors.blueGrey,
          style: BorderStyle.solid,
          width: 1.8,
        ),
        hoverColor: Colors.blueGrey,
        highlightedBorderColor:Colors.blueGrey,
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