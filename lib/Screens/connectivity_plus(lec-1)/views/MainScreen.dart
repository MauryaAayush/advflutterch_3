import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnetivityScreen extends StatelessWidget {
  const ConnetivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          // Handle the waiting state
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Handle any errors
          if (snapshot.hasError) {
            return const Center(child: Text('Error fetching connectivity status'));
          }

          // Ensure we have data before accessing it
          if (!snapshot.hasData) {
            return const Center(child: Text('No connectivity data available'));
          }

          // Determine the connectivity result
          final result = snapshot.data;
          if (result == ConnectivityResult.mobile) {
            return const Center(child: Text('Mobile connected to internet'));
          } else if (result == ConnectivityResult.wifi) {
            return const Center(child: Text('Mobile connected to Wifi'));
          } else {
            return Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/gifs/giphy.gif'),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
