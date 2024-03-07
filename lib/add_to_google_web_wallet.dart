import 'package:add_to_google_web_wallet/add_to_google_wallet_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddToGoogleWebWallet {
  Future<void> saveLoyaltyPass({
    required VoidCallback? onPressed,
    Function(Object)? onError,
    VoidCallback? onSuccess,
    VoidCallback? onCanceled,
  }) =>
      AddToGoogleWalletPlatform.instance.saveLoyaltyPass(
        onPressed: onPressed,
        onError: onError,
        onSuccess: onSuccess,
        onCanceled: onCanceled,
      );
}