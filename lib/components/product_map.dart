import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mbhagri/models/Produit.dart';
import 'package:mbhagri/src/locations.dart' as locations;
import 'package:mbhagri/utils/data.dart';

class ProductMap extends StatefulWidget {
  const ProductMap({Key? key, required this.product}) : super(key: key);
  final Produit product;

  @override
  State<ProductMap> createState() => _ProductMapState(product);
}

class _ProductMapState extends State<ProductMap> {
  _ProductMapState(this.product);
  final Produit product;

  late GoogleMapController mapController;

  final LatLng _center = LatLng(localisation.latitude, localisation.longitude);

  final Map<String, Marker> _markers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    setState(() {
      _markers.clear();
      final marker = Marker(
        markerId: MarkerId(product.id.toString()),
        position: LatLng(localisation.latitude, localisation.longitude),
        infoWindow: InfoWindow(
          title: product.description,
          snippet: localisation.adresse,
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      );
      _markers[product.id.toString()] = marker;

      // Update camera position to center on marker
      final cameraPosition =
          CameraPosition(target: marker.position, zoom: 11.0);
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Card(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 400.0,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
              markers: _markers.values.toSet(),
              mapType: MapType.hybrid,
            ),
          ),
        ),
      ),
    );
  }
}
