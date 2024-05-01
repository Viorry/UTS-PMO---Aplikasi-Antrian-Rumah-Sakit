import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class KonfirmasiNomorAntrianScreen extends StatelessWidget {
  const KonfirmasiNomorAntrianScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          child: Column(
            children: [
              SizedBox(
                height: 199.v,
                width: 285.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOk,
                      height: 166.v,
                      width: 185.h,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "TERIMAKASIH",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 238.h,
                child: Text(
                  "DATA TERSIMPAN!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 350.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "NOMOR ANTRIAN ANDA:",
                        style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "\n.69.",
                        style: TextStyle(color: Colors.black,fontSize: 50, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildDaftarLagi(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildDaftarLagi(BuildContext context) {
    return CustomElevatedButton(
      width: 133.h,
      text: "Daftar Lagi",
      margin: EdgeInsets.only(
        left: 113.h,
        right: 114.h,
        bottom: 31.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMedium16,
      onPressed: () {
        onTapDaftarLagi(context);
      },
    );
  }

  /// Navigates to the formPendaftaranScreen when the action is triggered.
  onTapDaftarLagi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPendaftaranScreen);
  }
}