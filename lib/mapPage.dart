import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



void main() {
  runApp(const mapPage(title: 'map'));
}


class mapPage extends StatefulWidget {
  const mapPage({super.key, required this.title});

  final String title;

  @override
  State<mapPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<mapPage>
{static const LatLng _pGooglePlex = LatLng(18.5204, 73.8567);

  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      // appBar: AppBar(
      //
      //   //title: Text(widget.title),
      // ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                // Add Google Map widget here
                const GoogleMap(
                  initialCameraPosition: CameraPosition(target: _pGooglePlex, zoom: 15,),
                ),
                // Curve design widget
                Hero(
                  tag: 'A1',
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_pin),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
