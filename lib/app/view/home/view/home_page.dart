import 'package:flutter_ad_trial/app/helpers/adhelper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AdHelper.adHelper.NativeAdLoader();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 410,
          child: AdWidget(
            ad: AdHelper.adHelper.nativeAd!,
          ),
        ),
      ),
    );
  }
}
