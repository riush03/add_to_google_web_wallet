import 'package:add_to_google_web_wallet/add_to_google_wallet_method_channel.dart';
import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class AddToGoogleWalletPlatform extends PlatformInterface {
  AddToGoogleWalletPlatform() : super(token: _token);

  static final Object _token = Object();

  static AddToGoogleWalletPlatform _instance = MethodChannelAddToGoogleWallet();

  static AddToGoogleWalletPlatform get instance => _instance;

  static set instance(AddToGoogleWalletPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> saveLoyaltyPass({
    VoidCallback? onPressed,
    Function(Object)? onError,
    VoidCallback? onSuccess,
    VoidCallback? onCanceled,
  }) =>
      throw UnimplementedError('saveLoyaltyPass() has not been implemented.');
}