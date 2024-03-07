import 'package:add_to_google_web_wallet/add_to_google_wallet_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MethodChannelAddToGoogleWallet extends AddToGoogleWalletPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('com.dennotech/loyalty_pass');

  @override
  Future<void> saveLoyaltyPass({
    VoidCallback? onPressed,
    Function(Object)? onError,
    VoidCallback? onSuccess,
    VoidCallback? onCanceled,
  }) async {
    methodChannel.setMethodCallHandler((call) async {
      if (call.method == 'onError') {
        final message = call.arguments['message'];

        if (onError != null) {
          onError(message);
        }
      }

      if (call.method == 'onPressed' && onPressed != null) {
        onPressed();
      }

      if (call.method == 'onSuccess' && onSuccess != null) {
        onSuccess();
      }

      if (call.method == 'onCanceled' && onCanceled != null) {
        onCanceled();
      }
    });

    final Map<String, dynamic> sendMap = {'loyalty_pass': onPressed};

    await methodChannel.invokeMethod(
      'saveLoyaltyPass',
      Map.from(sendMap),
    );
  }
}