import 'package:app_english/values/app_assets.dart';
import 'package:app_english/values/app_styles.dart';
import 'package:app_english/values/app_colors.dart';
import 'package:app_english/pages/home_page.dart';
import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child:Column(
        children: [
          Expanded(child: Container( // container ăn theo kích thước của view con
            // mặc định nó được ở giữa dòng , nếu ta xét alignment: Alignment.centerLeft thì nó se
            // lùi về sát dầu dong và ở giữa
            alignment: Alignment.centerLeft,
            child: Text(
              'Welcome to',
              style: AppStyles.h3,
            ),
          ),
          ),

          //========== cách 1:
          // Expanded(
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Row(
          //           children: [
          //             Expanded(
          //               flex: 2,
          //               child: Text(
          //                 'English',
          //                 style: AppStyles.h2.copyWith(
          //                   color: AppColors.blackGrey,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //         Padding(
          //           padding: EdgeInsets.only(top: 1),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: [
          //               Text(
          //                 'Quotes',
          //                 style: AppStyles.h3.copyWith(
          //                   height: 0.5,
          //                 )
          //               ),
          //             ]
          //           )
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
//======== cách 2:
          Expanded(
            child: Container(
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
                // stretch: nó sẽ kéo dài 2 con của nó múc đích để nó đg ở giửa thì thành mỗi đứa ở một đauaf
                children: [
                  Text(
                    'English',
                    style: AppStyles.h2.copyWith(
                        color: AppColors.blackGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      'Qoutes"',
                      textAlign: TextAlign.right,
                      style: AppStyles.h4.copyWith(height: 0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //======== end_cach2





          // mặc đinh lúc nào cũng thêm hình aảnh hay icon gì cũng thêm vào giữa , khi thêm bất kì c
          // phần tử nào
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 72),
              child: RawMaterialButton( //
                  shape: CircleBorder(), // hình tron
                  fillColor: AppColors.lighBlue,

                  onPressed: ()  {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => HomePage()),
                            (route) => false);
                  },
                  child: Image.asset(AppAssets.rightArrow)),

            ),
          ),
        ],
      ),
      ),

    );

  }
}
