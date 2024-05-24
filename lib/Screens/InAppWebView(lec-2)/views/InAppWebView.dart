import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebViewScreen extends StatelessWidget {
  InAppWebViewScreen({super.key});

  late InAppWebViewController inAppWebViewController;
  TextEditingController txtsearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: txtsearch,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                suffixIcon: Icon(Icons.mic),
                hintText: 'Search or type URL',
                fillColor: Colors.white,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                contentPadding: EdgeInsets.symmetric(vertical: 10)
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          StreamBuilder(
              stream: Connectivity().onConnectivityChanged,
              builder: (context, snapshot) {
                if (snapshot.data!.contains(ConnectivityResult.mobile) ||
                    snapshot.data!.contains(ConnectivityResult.wifi)) {
                  return InAppWebView(
                    initialUrlRequest: URLRequest(
                      url: WebUri('https://www.google.com/'),
                    ),
                    onWebViewCreated: (controller) {
                      inAppWebViewController = controller;
                    },
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
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {
                  inAppWebViewController.goBack();
                }, icon: Icon(Icons.chevron_left),iconSize: 35,),
                IconButton(onPressed: () {
                  inAppWebViewController.goForward();
                }, icon: Icon(Icons.chevron_right),iconSize: 35,),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.refresh),iconSize: 30,),
                IconButton(onPressed: () {
                  inAppWebViewController.reload();
                }, icon: Icon(Icons.looks_one_outlined),iconSize: 30,),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.menu),iconSize: 30,),

              ],
            ),
          ),
        )



        ],
      ),
    );
  }
}
