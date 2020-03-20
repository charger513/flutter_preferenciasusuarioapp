import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {

  // singleton start
  static final PreferenciasUsuario _instancia = PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();
  // singleton end

  SharedPreferences _prefs;

  // Ninguna de estas opciones se usa
  // bool _colorSecundario;
  // int _genero;
  // String _nombre;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // Get y Set del género
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }
}