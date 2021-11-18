import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<Marker> _markers= {};




  void _onMapCreated(GoogleMapController controller){
    setState(() {

      bool icons = true;
      _markers.add(
        Marker(markerId: const MarkerId('id-1'),
         position: const LatLng(13.48333, -88.183331),
         icon: BitmapDescriptor.defaultMarkerWithHue(
           (icons) ? BitmapDescriptor.hueYellow : BitmapDescriptor.hueRed
        ),  
         infoWindow: const InfoWindow(
           title: 'Telollevo SV',
           snippet: 'Sucursal principal de San Miguel',
         )
        ),
        
      );

      _markers.add(
        Marker(markerId: const MarkerId('id-2'),
         position: const LatLng(13.35, -88.45),
         icon: BitmapDescriptor.defaultMarkerWithHue(
           (icons) ? BitmapDescriptor.hueGreen: BitmapDescriptor.hueRed
        ),  
         infoWindow: const InfoWindow(
           title: 'Telollevo SV',
           snippet: 'Sucursal principal de Usulutan',
         )
        ),
        
      );

      _markers.add(
        Marker(markerId: const MarkerId('id-3'),
         position: const LatLng(13.7682, -88.1291),
         icon: BitmapDescriptor.defaultMarkerWithHue(
           (icons) ? BitmapDescriptor.hueMagenta : BitmapDescriptor.hueRed
        ),  
         infoWindow: const InfoWindow(
           title: 'Telollevo SV',
           snippet: 'Sucursal principal de  Morazan',
         )
        ),
        
      );

       _markers.add(
        Marker(markerId: const MarkerId('id-4'),
         position: const LatLng(13.3333, -87.8333),
         icon: BitmapDescriptor.defaultMarkerWithHue(
           (icons) ? BitmapDescriptor.hueOrange : BitmapDescriptor.hueRed
        ),  
         infoWindow: const InfoWindow(
           title: 'Telollevo SV',
           snippet: 'Sucursal principal de La Union',
          )
         
        ),
        
      );
    });

  }


  final _initialCameraPosition = const CameraPosition(target: LatLng(13.48333, -88.18333),zoom: 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PARCIAL 4'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}