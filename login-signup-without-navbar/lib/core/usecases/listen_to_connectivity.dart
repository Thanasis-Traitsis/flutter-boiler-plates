import 'package:flutter/material.dart';

import '../utils/network_helper.dart';

void listenToConnectivity({
  required GlobalKey<ScaffoldMessengerState> scaffoldKey,
  required BuildContext context,
}) {
  NetworkHelper.observeNetwork(scaffoldKey, context);
}
