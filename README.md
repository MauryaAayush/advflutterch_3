#
<h1 align = "center">Advance UI 3</h1>

###
<h3 align="center"><i>connectivity_plus package</i></h3>

## About : 
* The connectivity_plus package in Flutter enables checking network connectivity status and listening for changes, indicating whether the device is connected via WiFi, mobile data, or has no internet connection.
* Install by adding connectivity_plus to pubspec.yaml and use methods like checkConnectivity and onConnectivityChanged to manage connectivity states.

## Features : 
* Check Connectivity Status: Determine if the device is connected to WiFi, mobile data, or has no connection using checkConnectivity.
* Listen for Connectivity Changes: React to changes in network status with the onConnectivityChanged stream.
* Cross-Platform Support: Works on both Android and iOS platforms.
* Network Type Detection: Identify the type of network connection (WiFi or mobile).
* User-Friendly Integration: Easy to integrate into Flutter applications with straightforward API.


## Code :

```dart

 StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.data!.contains(ConnectivityResult.mobile)) {
              return Center(child: Text('Mobile is connected to Mobile Data'));
            } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
              return Center(child: Text('Mobile is connected to Wifi'));
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

```






<div align="center">

  <img src="https://github.com/MauryaAayush/advflutterch_3/assets/143180849/c985c975-c258-4235-9729-fa00c168cbae" height=500px hspace=20>
  <img src="https://github.com/MauryaAayush/advflutterch_3/assets/143180849/914c12b4-e4b5-4c14-951b-6ffab72f9656" height=500px hspace=20>
  <img src="https://github.com/MauryaAayush/advflutterch_3/assets/143180849/e28a8f2b-d46d-40fd-b6e8-f7a3ce59ab7c" height=500px hspace=20>
    
  <video src = "https://github.com/MauryaAayush/advflutterch_3/assets/143180849/4012e3e0-b627-45ed-94f2-0261a9508bf3">
</div>

###
<div align="center">
<a href="https://github.com/MauryaAayush/advflutterch_3/tree/master/lib/Screens/connectivity_plus(lec-1)/views">-> 👉📚 See The Code 📚 👈<-</a>
</div>






