import 'package:injectable/injectable.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

@singleton
class MapService {
  late MaplibreMapController _mapController;
  late PanelController _panelController;

  PanelController get panelController => _panelController;
  MaplibreMapController get mapController => _mapController;

  void setController(MaplibreMapController controller) {
    _mapController = controller;
  }

  void setPanelController(PanelController pController){
    _panelController = pController;
  }
}
