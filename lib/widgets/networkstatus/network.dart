import 'dart:io';

Future<bool?> networkStatus() async {
  bool status = false;
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      status = true;
      return status;
    }
  } on SocketException catch (_) {
    status = false;
    return status;
  }
}
