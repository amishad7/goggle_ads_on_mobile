import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  AdHelper._();

  static AdHelper adHelper = AdHelper._();

  NativeAd? nativeAd;

  void NativeAdLoader() async {
    nativeAd = NativeAd(
      adUnitId: "ca-app-pub-3940256099942544/2247696110",
      listener: NativeAdListener(),
      request: const AdRequest(),
    );
    await  nativeAd?.load();
  }
}
