import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/form_pendaftaran_screen/form_pendaftaran_screen.dart';
import '../presentation/hasil_form_screen/hasil_form_screen.dart';
import '../presentation/konfirmasi_nomor_antrian_screen/konfirmasi_nomor_antrian_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String formPendaftaranScreen = '/form_pendaftaran_screen';

  static const String hasilFormScreen = '/hasil_form_screen';

  static const String konfirmasiNomorAntrianScreen =
      '/konfirmasi_nomor_antrian_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    formPendaftaranScreen: (context) => FormPendaftaranScreen(),
    hasilFormScreen: (context) => HasilFormScreen(),
    konfirmasiNomorAntrianScreen: (context) => KonfirmasiNomorAntrianScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => FormPendaftaranScreen()
  };
}
