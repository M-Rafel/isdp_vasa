part of isdp_vasa;

class Internet {
  late StreamSubscription<ConnectivityResult> listener;

  static final Internet _instance = Internet._internal();
  Internet._internal();

  static Internet getInstance() => _instance;

  late bool _isConnected = false;
  static bool isConnected() => getInstance()._isConnected;

  initialize() async {
    Connectivity _connectivity = Connectivity();
    checkConnectivity(await _connectivity.checkConnectivity());

    listener = _connectivity.onConnectivityChanged
        .listen((ConnectivityResult result) async {
      checkConnectivity(result);
    });
  }

  checkConnectivity(ConnectivityResult result) async {
    if (result != ConnectivityResult.none) {
      _isConnected = await InternetConnectionChecker().hasConnection;
      if (!_isConnected) {
        Message.noConnectionMessage();
      }


    } else {
      _isConnected = false;
      Message.noConnectionMessage();
    }
  }
}
