#
<h1 align = "center">Advance UI 3</h1>

###
<h3 align="center"><i>connectivity_plus package</i></h3>

## About : 


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





This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
