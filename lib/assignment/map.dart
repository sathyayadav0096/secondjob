import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FieldInfoScreen(),
    );
  }
}

class FieldInfoScreen extends StatefulWidget {
  @override
  _FieldInfoScreenState createState() => _FieldInfoScreenState();
}

class _FieldInfoScreenState extends State<FieldInfoScreen> {
  final TextEditingController farmIdController = TextEditingController();
  final TextEditingController indexController = TextEditingController();
  final TextEditingController satelliteController = TextEditingController();
  final TextEditingController satelliteDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Field Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: farmIdController,
              decoration: InputDecoration(labelText: 'Farm ID'),
            ),
            TextField(
              controller: indexController,
              decoration: InputDecoration(labelText: 'Index'),
            ),
            TextField(
              controller: satelliteController,
              decoration: InputDecoration(labelText: 'Satellite'),
            ),
            TextField(
              controller: satelliteDateController,
              decoration: InputDecoration(labelText: 'Satellite Date (YYYY-MM-DD)'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Save button is hit
                print('Field Data:');
                print('Farm ID: ${farmIdController.text}');
                print('Index: ${indexController.text}');
                print('Satellite: ${satelliteController.text}');
                print('Satellite Date: ${satelliteDateController.text}');

                // Navigate to the map page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapScreen()),
                );
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(29.0147, 73.0831); // Center of the polygon

  final List<LatLng> _polygonCoordinates = [
    LatLng(29.01638908, 73.080646321),
    LatLng(29.016109667, 73.085775375),
    LatLng(29.013121103, 73.085736819),
    LatLng(29.013036368, 73.080674149),
    LatLng(29.01638908, 73.080646321),
  ];

  Set<Polygon> _polygons = {
    Polygon(
      polygonId: PolygonId('myPolygon'),
      points: [
        LatLng(29.01638908, 73.080646321),
        LatLng(29.016109667, 73.085775375),
        LatLng(29.013121103, 73.085736819),
        LatLng(29.013036368, 73.080674149),
        LatLng(29.01638908, 73.080646321),
      ],
      strokeWidth: 2,
      strokeColor: Colors.blue,
      fillColor: Colors.blue.withOpacity(0.3),
    ),
  };

  Future<void> _fetchAndDisplayImage() async {
    final apiUrl =
        'https://api.mapmycrop.com/satellite/field-imagery-stats?api_key=424ddd23098841bbb64bb972d3ad177f&farm_id=30ee241065cf43ddac897e44ffb458d9&index=NDVI&satellite=S1&satellite_date=2023-12-08';

    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        // Decode base64 image
        final imageBytes = response.bodyBytes;
        // TODO: Display the image using the imageBytes
      } else {
        print('Failed to fetch image: ${response.reasonPhrase}');
      }
    } catch (error) {
      print('Error fetching image: $error');
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      // Add polygons to the map
      _polygons.add(
        Polygon(
          polygonId: PolygonId('myPolygon'),
          points: _polygonCoordinates,
          strokeWidth: 2,
          strokeColor: Colors.blue,
          fillColor: Colors.blue.withOpacity(0.3),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Google Maps with Image'),
      ),
      body: Column(
        children: [
          Container(
            height: 200, // Set the desired height for the image
            // TODO: Display the image here
          ),
          Expanded(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 14.0,
              ),
              polygons: _polygons,
            ),
          ),
        ],
      ),
    );
  }
}
