import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnetivityScreen extends StatelessWidget {
  const ConnetivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
         if(snapshot.data!.contains(ConnectivityResult.mobile))
             {
               return  const Center(child: Text('Mobile connected to internet'));
             }
            else if(snapshot.data!.contains(ConnectivityResult.wifi))
              {
                return Center(child: const Text('Mobile connected to Wifi'));
              }
            else
              {
                return const Center(child: CircularProgressIndicator(color: Colors.red,));
              }
        },
      ),
    );
  }
}
