import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HasilFormScreen extends StatelessWidget {
  HasilFormScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController placeAndDateOfBirthSectionController =
      TextEditingController();

  TextEditingController religionOneSectionController = TextEditingController();

  TextEditingController guardiansNameSectionController =
      TextEditingController();

  TextEditingController phoneNumberOneSectionController =
      TextEditingController();

  TextEditingController noRmbilaAdaSectionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              Text(
                "Hasil Form",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 19.v),
              _buildNamaSection(context),
              SizedBox(height: 15.v),
              _buildPlaceAndDateOfBirthSection(context),
              SizedBox(height: 15.v),
              _buildJenisKelaminSection(context),
              SizedBox(height: 15.v),
              _buildAlamatSection(context),
              SizedBox(height: 15.v),
              _buildReligionOneSection(context),
              SizedBox(height: 15.v),
              _buildGuardiansNameSection(context),
              SizedBox(height: 15.v),
              _buildPhoneNumberOneSection(context),
              SizedBox(height: 15.v),
              _buildNoRmbilaAdaSection(context),
              SizedBox(height: 12.v),
              SizedBox(
                width: 288.h,
                child: Text(
                  "PASTIKAN DATA DIATAS SUDAH BENAR JIKA BELUM KLIK “KEMBALI”",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(right: 13.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSimpanSection(context),
                    _buildKembaliSection(context)
                  ],
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNamaSection(BuildContext context) {
    return Container(
      width: 290.h,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.v),
          Text(
            "Nama",
            style: theme.textTheme.titleLarge,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaceAndDateOfBirthSection(BuildContext context) {
    return CustomTextFormField(
      controller: placeAndDateOfBirthSectionController,
      hintText: "Tempat dan Tanggal Lahir",
    );
  }

  /// Section Widget
  Widget _buildJenisKelaminSection(BuildContext context) {
    return Container(
      width: 290.h,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Text(
            "Jenis Kelamin",
            style: theme.textTheme.titleLarge,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAlamatSection(BuildContext context) {
    return Container(
      width: 290.h,
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.v),
          Text(
            "Alamat",
            style: theme.textTheme.titleLarge,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReligionOneSection(BuildContext context) {
    return CustomTextFormField(
      controller: religionOneSectionController,
      hintText: "Agama",
    );
  }

  /// Section Widget
  Widget _buildGuardiansNameSection(BuildContext context) {
    return CustomTextFormField(
      controller: guardiansNameSectionController,
      hintText: "Nama Penanggungjawab",
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberOneSection(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberOneSectionController,
      hintText: "Nomor Telepon",
    );
  }

  /// Section Widget
  Widget _buildNoRmbilaAdaSection(BuildContext context) {
    return CustomTextFormField(
      controller: noRmbilaAdaSectionController,
      hintText: "No RM (Bila Ada)",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildSimpanSection(BuildContext context) {
    return CustomElevatedButton(
      width: 133.h,
      text: "Simpan",
      buttonTextStyle: theme.textTheme.titleMedium!,
      onPressed: () {
        onTapSimpanSection(context);
      },
    );
  }

  /// Section Widget
  Widget _buildKembaliSection(BuildContext context) {
    return CustomElevatedButton(
      width: 133.h,
      text: "Kembali",
      margin: EdgeInsets.only(left: 13.h),
      buttonStyle: CustomButtonStyles.fillRedA,
      buttonTextStyle: theme.textTheme.titleMedium!,
      onPressed: () {
        onTapKembaliSection(context);
      },
    );
  }

  /// Navigates to the konfirmasiNomorAntrianScreen when the action is triggered.
  onTapSimpanSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.konfirmasiNomorAntrianScreen);
  }

  /// Navigates to the formPendaftaranScreen when the action is triggered.
  onTapKembaliSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPendaftaranScreen);
  }
}
