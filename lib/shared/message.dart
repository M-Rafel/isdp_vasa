part of isdp_vasa;

class Message {

  Message.noConnectionMessage(){
    if(!Get.isSnackbarOpen) {
      Get.showSnackbar(
        GetSnackBar(
          title: 'No Internet Connection',
          message: 'Please check your internet connection',
          isDismissible: true,
          duration: Duration(milliseconds: 3000),
          backgroundColor: Color(0xff191919),
          borderRadius: 10,
          margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
        ),
      );
    }
  }

  Message.errorMessageSnackBar(String? title, String? message){
    if(!Get.isSnackbarOpen) {
      Get.showSnackbar(
        GetSnackBar(
          title: title ?? 'Oops',
          message: message ?? 'Something went wrong, please try again',
          isDismissible: true,
          duration: const Duration(milliseconds: 3000),
          backgroundColor: const Color(0xff191919),
          borderRadius: 10,
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 5),
        ),
      );
    }
  }

  Message.successMessageSnackBar(String? title, String? message){
    Get.showSnackbar(
      GetSnackBar(
        title: title ?? 'Done',
        message: message ?? 'The operation has completed successfully',
        isDismissible: true,
        duration: const Duration(milliseconds: 3000),
        backgroundColor: const Color(0xff191919),
        borderRadius: 10,
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 5),
      ),
    );
  }

  Message.toast(String message, {int duration = 3000}){
    Get.showSnackbar(
      GetSnackBar(
        message: message,
        isDismissible: true,
        duration: Duration(milliseconds: duration),
        backgroundColor: const Color(0xff191919),
        borderRadius: 10,
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 5),
      ),
    );
  }
}