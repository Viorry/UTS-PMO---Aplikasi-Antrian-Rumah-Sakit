import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FormPendaftaranScreen extends StatelessWidget {
  FormPendaftaranScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController placeAndDateOfBirthController = TextEditingController();

  TextEditingController religionOneController = TextEditingController();

  TextEditingController nextOfKinNameController = TextEditingController();

  TextEditingController phoneNumberOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              Text(
                "Form Pendaftaran Pasien",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 19.v),
              _buildFormNama(context),
              SizedBox(height: 15.v),
              _buildPlaceAndDateOfBirth(context),
              SizedBox(height: 15.v),
              _buildFormJenisKelamin(context),
              SizedBox(height: 15.v),
              _buildFormAlamat(context),
              SizedBox(height: 15.v),
              _buildReligionOne(context),
              SizedBox(height: 15.v),
              _buildNextOfKinName(context),
              SizedBox(height: 15.v),
              _buildPhoneNumberOne(context),
              SizedBox(height: 15.v),
              _buildFormNormBilaAda(context),
              SizedBox(height: 32.v),
              _buildDaftar(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFormNama(BuildContext context) {
    return Container(
      width: 290.h,
      margin: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
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
  Widget _buildPlaceAndDateOfBirth(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
      child: CustomTextFormField(
        controller: placeAndDateOfBirthController,
        hintText: "Tempat dan Tanggal Lahir",
      ),
    );
  }

  /// Section Widget
  Widget _buildFormJenisKelamin(BuildContext context) {
    return Container(
      width: 290.h,
      margin: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
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
  Widget _buildFormAlamat(BuildContext context) {
    return Container(
      width: 290.h,
      margin: EdgeInsets.only(
        left: 1.h,
        right: 2.h,
      ),
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
  Widget _buildReligionOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
      child: CustomTextFormField(
        controller: religionOneController,
        hintText: "Agama",
      ),
    );
  }

  /// Section Widget
  Widget _buildNextOfKinName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
      child: CustomTextFormField(
        controller: nextOfKinNameController,
        hintText: "Nama Penanggungjawab",
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
      child: CustomTextFormField(
        controller: phoneNumberOneController,
        hintText: "Nomor Telepon",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildFormNormBilaAda(BuildContext context) {
    return Container(
      width: 290.h,
      margin: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "No RM (Bila Ada)",
            style: theme.textTheme.titleLarge,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDaftar(BuildContext context) {
    return CustomElevatedButton(
      width: 133.h,
      text: "Daftar",
      buttonTextStyle: theme.textTheme.titleMedium!,
      onPressed: () {
        onTapDaftar(context);
      },
    );
  }

  /// Navigates to the hasilFormScreen when the action is triggered.
  onTapDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hasilFormScreen);
  }
}
