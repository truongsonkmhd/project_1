import 'package:flutter/material.dart';
import '../values/app_assets.dart';
import '../values/app_colors.dart';
import '../values/app_styles.dart';
class ControlPage extends StatefulWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  @override

  double sliderValue = 1;


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        elevation: 0,
        title: Text(
          'Your control',
          style:
          AppStyles.h3.copyWith(color: AppColors.textColor, fontSize: 36),
        ),

        leading: InkWell(
          onTap: () async{
         //   SharedPreferences prefs = await = await SharedPreferences.getInstance();
             Navigator.pop(context);
          },
          child: Image.asset(AppAssets.leftArrow),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
               child: Text('How much a number word at once',style: AppStyles.h4.copyWith(
                    color: AppColors.lightGrey,
                    fontSize: 15
                )),
              ),




              Text('${sliderValue.toInt()}',style: AppStyles.h1.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 150,
                fontWeight: FontWeight.bold,
              )),
            Slider(value: sliderValue,
                  min: 1,
                  max:100,
                  divisions: 99,
                  activeColor: AppColors.textColor,
                  inactiveColor: AppColors.primaryColor,
                  onChanged: (value){
                print(value);
                setState(() {
                  // khi cta tác động vào (kéo) or (click) or (nhập vào gtri) (trong trường hợp này là kéo gtri) thì kéo đến đâu
                  // thí sliderValue nó tăng đến đấy đó là công dụng của setState mà không cần
                  sliderValue = value;
                });
              }),




              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32) ,
                alignment: Alignment.centerLeft,
               child: Text('slide to set',style: AppStyles.h4.copyWith(
                  color: AppColors.textColor,
                )),
              ),

            ],
        ),

      ),
    );
  }
}
