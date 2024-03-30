import '../../../core/app_export.dart';

/// This class is used in the [eight_item_widget] screen.
class EightItemModel {
  EightItemModel({
    this.remixIconsLin,
    this.masuk,
    this.sevenHundred,
    this.tepatWaktu,
    this.id,
  }) {
    remixIconsLin = remixIconsLin ?? ImageConstant.imgRemixIconsLinPrimary;
    masuk = masuk ?? "Masuk";
    sevenHundred = sevenHundred ?? "07:00 ";
    tepatWaktu = tepatWaktu ?? "Tepat Waktu";
    id = id ?? "";
  }

  String? remixIconsLin;

  String? masuk;

  String? sevenHundred;

  String? tepatWaktu;

  String? id;
}
