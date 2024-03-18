import 'dart:async' show Future;
import 'package:adapty_flutter/adapty_flutter.dart';

class FamilyforgeFitnessAdapty {
  void Function(AdaptyError)? onFamilyforgeFitnessAdaptyErrorOccurred;
  void Function(Object)? onFamilyforgeFitnessUnknownErrorOccurred;

  final familyforgeFitnessAdapty = Adapty();

  static final FamilyforgeFitnessAdapty _familyforgeFitnessInstance = FamilyforgeFitnessAdapty._internal();

  factory FamilyforgeFitnessAdapty() {
    return _familyforgeFitnessInstance;
  }

  FamilyforgeFitnessAdapty._internal();

  Future<AdaptyProfile?> learCall() async {
    try {
      final ocev = await familyforgeFitnessAdapty.getProfile();
      return ocev;
    } on AdaptyError catch (adaptyError) {
      onFamilyforgeFitnessAdaptyErrorOccurred?.call(adaptyError);
    } catch (e) {
      onFamilyforgeFitnessUnknownErrorOccurred?.call(e);
    }
    return null;
  }

  Future<void> initializeFamilyforgeFitnessAdapty() async {
    try {
      familyforgeFitnessAdapty.setLogLevel(AdaptyLogLevel.verbose);
      familyforgeFitnessAdapty.activate();
    } on AdaptyError catch (adaptyError) {
      onFamilyforgeFitnessAdaptyErrorOccurred?.call(adaptyError);
    } catch (e) {
      onFamilyforgeFitnessUnknownErrorOccurred?.call(e);
    }
  }

  Future<AdaptyPaywall?> familyforgeFitnessGetPaywall(
    String familyforgeFitnessPaywallId,
  ) async {
    try {
      final familyforgeFitnessocev = await familyforgeFitnessAdapty.getPaywall(
        placementId: familyforgeFitnessPaywallId,
        loadTimeout: const Duration(seconds: 5),
      );
      return familyforgeFitnessocev;
    } on AdaptyError catch (adaptyError) {
      onFamilyforgeFitnessAdaptyErrorOccurred?.call(adaptyError);
    } catch (e) {
      onFamilyforgeFitnessUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<List<AdaptyPaywallProduct>?>familyforgeFitnessGetPaywallProducts(
    AdaptyPaywall familyforgeFitnessPaywall,
  ) async {
    try {
      final familyforgeFitnessocev =
          await familyforgeFitnessAdapty.getPaywallProducts(paywall: familyforgeFitnessPaywall);
      return familyforgeFitnessocev;
    } on AdaptyError catch (adaptyError) {
      onFamilyforgeFitnessAdaptyErrorOccurred?.call(adaptyError);
    } catch (e) {
      onFamilyforgeFitnessUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<AdaptyProfile?> familyforgeFitnessMakePurchase(
      AdaptyPaywallProduct familyforgeFitnessProduct) async {
    try {
      final familyforgeFitnessocev =
          await familyforgeFitnessAdapty.makePurchase(product: familyforgeFitnessProduct);
      return familyforgeFitnessocev;
    } on AdaptyError catch (adaptyError) {
      onFamilyforgeFitnessAdaptyErrorOccurred?.call(adaptyError);
    } catch (e) {
      onFamilyforgeFitnessUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<AdaptyProfile?> familyforgeFitnessRestorePurchases() async {
    try {
      final familyforgeFitnessocev = await familyforgeFitnessAdapty.restorePurchases();

      return familyforgeFitnessocev;
    } on AdaptyError catch (adaptyError) {
      onFamilyforgeFitnessAdaptyErrorOccurred?.call(adaptyError);
    } catch (e) {
      onFamilyforgeFitnessUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<bool> familyforgeFitnessHasPremiumStatus() async {
    try {
      final familyforgeFitnessProfile = await familyforgeFitnessAdapty.getProfile();
      if (familyforgeFitnessProfile.accessLevels['premium']?.isActive ?? false) {
        return true;
      }
    } on AdaptyError catch (adaptyError) {
      onFamilyforgeFitnessAdaptyErrorOccurred?.call(adaptyError);
    } catch (e) {
      onFamilyforgeFitnessUnknownErrorOccurred?.call(e);
    }

    return false;
  }
}
