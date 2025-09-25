import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/bloc/bloc/reverse_geo_bloc.dart';
import 'package:bloc_practice/presentation/bloc_screens/map_screen/map_service/map_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainMapScreen extends StatefulWidget {
  const MainMapScreen({super.key});

  @override
  State<MainMapScreen> createState() => _MainMapScreenState();
}

// PanelController //
PanelController _panelController = PanelController();

class _MainMapScreenState extends State<MainMapScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getIt<MapService>().setPanelController(_panelController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: MediaQuery.of(context).size.height * 0.3,
        maxHeight:MediaQuery.of(context).size.height ,
          controller: getIt<MapService>().panelController,
          panel: Center(
            child: Column(
              children: [
                BlocBuilder<ReverseGeoBloc, ReverseGeoState>(
                  builder: (context, state) {
                    return state.map(
                      loading: (_) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (placeInfo) {
                        final place = placeInfo.placeInfo.place;
                        return Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                place.addressBn, // Bengali Address
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "${place.areaBn}, ${place.cityBn}", // Area + City
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Post Code: ${place.postCode}",
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Distance: ${place.distanceWithinMeters.toStringAsFixed(2)} m",
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      initial: (_) => const Center(
                        child: Text(
                          'Select a location',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      error: (error) => Center(
                        child: Text(
                          'Error loading location',
                          style:
                              const TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (getIt<MapService>().panelController.isAttached) {
                        await getIt<MapService>().panelController.hide();
                      }
                    },
                    child: Text("Hide"))
              ],
            ),
          ),
          body: MaplibreMap(
            trackCameraPosition: true,
            compassEnabled: true,
            myLocationEnabled: true,
            myLocationRenderMode: MyLocationRenderMode.COMPASS,
            myLocationTrackingMode: MyLocationTrackingMode.Tracking,
            rotateGesturesEnabled: true,
            tiltGesturesEnabled: true,
            zoomGesturesEnabled: true,
            scrollGesturesEnabled: true,
            doubleClickZoomEnabled: true,
            //quickZoomGesturesEnabled: true,
            minMaxZoomPreference: const MinMaxZoomPreference(5, 20),
            initialCameraPosition: CameraPosition(
              target: LatLng(23.8283, 90.3607),
              zoom: 14,
            ),
            styleString:
                "https://map.barikoi.com/styles/osm_barikoi_v2/style.json?key=MjYyMzpHOVkzWFlGNjZG",
            onMapCreated: (controller) {
              getIt<MapService>().setController(controller);
            },
            onStyleLoadedCallback: () => print("Style loaded!"),
            //onCameraMoveStarted: () => print("Camera started moving"),
            //onCameraMove: (pos) => print("Camera moving: ${pos.target}"),
            onCameraIdle: () => print("Camera idle"),
            onMapClick: (point, coordinates) {
              BlocProvider.of<ReverseGeoBloc>(context).add(
                ReverseGeoEvent.getPlaceInfo(
                  lat: coordinates.latitude.toString(),
                  lon: coordinates.longitude.toString(),
                ),
              );
            },
            onUserLocationUpdated: (location) =>
                print("User location: $location"),
          )),
    );
  }
}
