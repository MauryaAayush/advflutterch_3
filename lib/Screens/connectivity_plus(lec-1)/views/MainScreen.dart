import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnetivityScreen extends StatelessWidget {
  const ConnetivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.data!.contains(ConnectivityResult.mobile)) {
              return  const Center(child: Text('Mobile is connected to Mobile Data'));
            } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
              return  Center(child: Text('Mobile is connected to Wifi'));
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
