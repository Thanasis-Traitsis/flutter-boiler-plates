import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../widgets/scaffold_message.dart';

class NetworkHelper {
  static void observeNetwork(
    GlobalKey<ScaffoldMessengerState> scaffoldKey,
    BuildContext context,
  ) {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        scaffoldKey.currentState?.showSnackBar(
          ScaffoldMessage(
            context: context,
            message:
                'This app requires an internet connection for optimal performance. Please connect to a Wi-Fi network and try again.',
            noError: false,
            onTap: () {
              scaffoldKey.currentState?.hideCurrentSnackBar();
            },
          ),
        );
      } else {
        scaffoldKey.currentState?.hideCurrentSnackBar();
      }
    });
  }
}
