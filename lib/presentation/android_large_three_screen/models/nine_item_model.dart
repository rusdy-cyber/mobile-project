import '../../../core/app_export.dart';

/// This class is used in the [nine_item_widget] screen.
class NineItemModel {
  NineItemModel({
    this.izinAbsen,
    this.isiFormUntukMeminta,
    this.id,
  }) {
    izinAbsen = izinAbsen ?? "Izin Absen";
    isiFormUntukMeminta =
        isiFormUntukMeminta ?? "Isi form untuk meminta izin absen";
    id = id ?? "";
  }

  String? izinAbsen;

  String? isiFormUntukMeminta;

  String? id;
}
