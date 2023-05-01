import 'package:app_english/values/app_colors.dart';
import 'package:app_english/values/app_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label; // để lưu trữ nội dung của một nhãn
  final VoidCallback onTap; // để lưu trữ hàm đc gọi khi người dùng nhấn nút

  const AppButton({Key? key, required this.label, required this.onTap})
      : super(key: key);
// Key? key: là một tham số tuỳ chọn và được sưr dụng để xác định wiget trong cây nếu không có key nào nó đặt là null
  //required: cần tìm => thêm required để bắt buộc không thể bỏ qua hai thâm số này
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //InkWell widget, là một widget có thể nhận các sự kiện như nhấp chuột. Khi nút được nhấp, phương thức onTap được gọi.
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity, // cho cái container này full width
        margin: const EdgeInsets.symmetric(horizontal: 16), // bên trên full width bên dưới margin để nó cách lề
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(3, 6), blurRadius: 6)
            ],
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(
          label,
          style: AppStyles.h5.copyWith(color: AppColors.textColor),
        ),
      ),
    );
  }
}