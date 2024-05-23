import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebViewScreen extends StatelessWidget {
   InAppWebViewScreen({super.key});

late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if ( snapshot.data!.contains(ConnectivityResult.mobile)  || snapshot.data!.contains(ConnectivityResult.wifi)) {
              return InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri('https://www.google.com/'),
                ),

                // onWebViewCreated: (controller) {
                //
                // },
              );
            } else {
              return Center(
                child: Container(
                  height: 350,
                  width: 450,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/gifs/giphy.gif'),
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }
}
