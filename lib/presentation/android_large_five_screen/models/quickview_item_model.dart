import '../../../core/app_export.dart';

/// This class is used in the [quickview_item_widget] screen.
class QuickviewItemModel {
  QuickviewItemModel({
    this.jumlahIzin,
    this.text,
    this.id,
  }) {
    jumlahIzin = jumlahIzin ?? "Jumlah Izin";
    text = text ?? "0";
    id = id ?? "";
  }

  String? jumlahIzin;

  String? text;

  String? id;
}
