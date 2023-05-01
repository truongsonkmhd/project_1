import 'dart:math';

import 'package:app_english/packages/quote/quote_model.dart';
import 'package:app_english/values/app_assets.dart';
import 'package:app_english/values/app_colors.dart';
import 'package:app_english/values/app_styles.dart';
import 'package:english_words/english_words.dart';
import 'package:app_english/models/english_today.dart';
import 'package:app_english/packages/quote/quote.dart';
import 'package:app_english/packages/quote/quote.dart';
import 'package:app_english/pages/all_page.dart';
import 'package:app_english/pages/control_page.dart';
import 'package:app_english/values/app_assets.dart';

import 'package:app_english/values/app_styles.dart';
import 'package:app_english/values/share_keys.dart';
import 'package:app_english/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

//import 'package:shared_preferences/shared_preferences.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatefulWidget {
  // bởi bì  home này nó  khônng phải là giao diện tĩnh nên ta dùng stateful
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // để theo dõi vị trí hiện tại của pageView
  late PageController _pageController;

  List<EnglishToday> words = [];

  List<int> fixedListRamdom({int len = 1, int max = 120, int min = 1}) {
    if (len > max || len < min) {
      return [];
    }
    List<int> newList = [];

    Random random = Random();
    int count = 1;
    while (count <= len) {
      int val = random.nextInt(max);
      if (newList.contains(val)) {
        continue;
      } else {
        newList.add(val);
        count++;
      }
    }
    return newList;
  }

  getEnglishToday() {
    List<String> newList = [];
    List<int> rans = fixedListRamdom(len: 5, max: nouns.length);
    rans.forEach((index) {
      newList.add(nouns[index]);
    });

    words = newList.map((e) => EnglishToday(noun: e)).toList();
  }

  final GlobalKey<ScaffoldState> _scaffolKey = GlobalKey<ScaffoldState>();

// định danh duy nhất trong app
  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.9);
    //viewportFraction được thiết lập thành 0,9, cho phép hiển thị 90% của mỗi trang.
    super.initState();
    getEnglishToday();
  }

/*-initState() là một trong những phương thức khởi tạo trong một StatefulWidget. Nó được gọi đầu tiên khi State được tạo ra
và trước khi build được gọi. Phương thức này được gọi một lần duy nhất trong quá trình vòng đời của Widget và nó cho phép
chúng ta khởi tạo các giá trị ban đầu, tạo đối tượng, thiết lập kết nối với API hoặc database và các tác vụ khác.
-Trong đoạn mã trên, initState() được sử dụng để khởi tạo một đối tượng PageController với viewportFraction là 0.9, đồng thời
gọi phương thức khởi tạo của lớp cha bằng cách sử dụng super.initState().*/

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // lấy ra size cả màn hình như  kiểu là số int
    return Scaffold(
      key: _scaffolKey,

      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        elevation: 0,
        title: Text(
          'English today',
          style:
              AppStyles.h3.copyWith(color: AppColors.textColor, fontSize: 36),
        ),
        leading: InkWell(
          onTap: () {
            _scaffolKey.currentState?.openDrawer();
            /*?. để kiểm tra xem _scaffolKey.currentState có tồn tại hay không trước khi gọi phương thức openDrawer().
               Nếu currentState không tồn tại (tức là _scaffolKey chưa được gắn vào ScaffoldState nào cả) thì phương thức
               openDrawer() sẽ không được gọi.*/
          },
          child: Image.asset(AppAssets.menu),
        ),
      ),

      //==========================Phần thân(gồm 2 phần)================
      body: Container(
        width: double.infinity,
        /*
        Vì vậy, "width: double.infinity" được sử dụng để đặt chiều rộng của một phần
         tử là bằng với chiều rộng của khung hiển thị và phần tử sẽ mở rộng ra toàn
         bộ khung hiển thị theo chiều ngang, không bị cắt bớt hay tràn ra ngoài.
         */
        //============================ phần thân 1 ( chiếm 1/10 màn hình)
        child: Column(
          children: [
            Container(
                height: size.height * 1 / 12,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 23),
                alignment: Alignment.centerLeft,
                child: Text(
                    'It is amazing how complete is the delusion that beauty is good',
                    style: AppStyles.h5.copyWith(
                      // copyWith là ta  có thể sửa lại định dạng chữ
                      fontSize: 12,
                      color: AppColors.textColor,
                    ))),

            //============== phần thân 2 ( chiếm 2/3 màn hình) =========
            Container(
              height: size.height * 2 / 3,

              //=======================================new===================================
              // mã này tạo ra một PageView với 5 trang con, mỗi trang con sẽ hiển thị một số tương ứng với chỉ số của trang đó:
              child: PageView.builder(
                  /*phép chúng ta di chuyển qua lại giữa các trang.
              Khi trang được thay đổi, onPageChanged được gọi với chỉ số của trang mới được chọn.
              Sau đó, hàm setState được gọi để cập nhật giá trị của biến _currentIndex bằng chỉ
              số trang mới được chọn. Hàm setState được sử dụng để thông báo cho Flutter biết
              rằng trạng thái của widget đã thay đổi và Flutter sẽ tự động cập nhật lại giao
              diện của widget để hiển thị giá trị mới của _currentIndex.*/
                  controller: _pageController,
                  //controller được sử dụng để cung cấp một đối tượng _PageController cho PageView. PageController quản lý trình điều khiển trang của PageView và cho
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex =
                          index; // index chạy bắt đầu  từ 0, _currentIndex
                      /*Mặc dù không có index++ được sử dụng, nhưng các giá trị của index vẫn được tăng lên mỗi khi PageView chuyển sang một trang mới.
                       Cụ thể, khi người dùng chuyển sang trang mới trong PageView, hàm onPageChanged sẽ được gọi và giá trị của index sẽ được cập nhật
                       bằng vị trí của trang mới, và PageView sẽ được render lại với các item tương ứng với vị trí mới này.*/
                      // setState: cập nhập lại dữ liệu cho biến nào đó thì những nơi sử dụng biêns đó sẽ render(trả lại)
                    });
                  },
                  itemCount: words.length,
                  //itemCount:5// => index chạy từ [0,4]
                  itemBuilder: (context, index) {
                    String firstLetter =
                        words[index].noun != null ? words[index].noun! : '';
                    firstLetter = firstLetter.substring(0, 1);

                    String leftLetter =
                        words[index].noun != null ? words[index].noun! : '';
                    return Padding(
                      // bọc padding để các phần tử cách nhau khi cuộn
                      padding: const EdgeInsets.all(8),
                      // padding giữa các container liền kề (row)
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(3, 6),
                                blurRadius: 6),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              child: Image.asset(AppAssets.heart),
                            ),
                            RichText(
                              maxLines: 1,
                              // để nó không xuống hàng, kết hợp với overflow
                              overflow: TextOverflow.ellipsis,
                              // nếu không đủ độ để chứa chữ nó sẽ hiên dấu '....'
                              textAlign: TextAlign.start,
                              // căn lề theo chiều bên phải
                              text: TextSpan(
                                  text: firstLetter,
                                  style: TextStyle(
                                      fontFamily: FontFamily.sen,
                                      fontSize: 89,
                                      fontWeight: FontWeight.bold,
                                      //==== note
                                      textBaseline: TextBaseline.alphabetic,
                                      // Lùi chữ Beautiful vào bên trái
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(3, 6),
                                            // độ đổ bóng  offset: Offset(bottom, right),
                                            blurRadius: 10 // bán kính mờ
                                            ),
                                      ]),
                                  children: [
                                    TextSpan(
                                      text: leftLetter,
                                      style: TextStyle(
                                        fontFamily: FontFamily.sen,
                                        fontSize: 56,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Text(
                                '"Think of all the beaty still left around you and be happy!!"',
                                style: AppStyles.h4.copyWith(
                                  color: AppColors.textColor,
                                ),
                                textAlign: TextAlign
                                    .center, // Căn đều 2 bên left-right
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
//===================================== indicator: chỉ báo=========================
            // cái thanh ở dưới phần thân (scroll)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.only(left: 30),
              height: 12,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                // nó sẽ cố định không vuốt được mặc định đứng yên vd itemCount:5;chỉ lướt đc 5 phát
                scrollDirection: Axis.horizontal,
                // để nó hiện thị thành thanh cách nhau
                /*scrollDirection là một thuộc tính của các widget ScrollView như ListView, GridView, hay PageView, dùng để chỉ định hướng cuộn trang.
         Trong trường hợp này, scrollDirection được set là Axis.horizontal, tức là nó cho phép trang cuộn ngang (trái sang phải). Nếu bạn muốn
         trang cuộn dọc (từ trên xuống dưới) thì bạn có thể set scrollDirection là Axis.vertical.scrollDirection là một thuộc tính của các widget
         ScrollView như ListView, GridView, hay PageView, dùng để chỉ định hướng cuộn trang. Trong trường hợp này, scrollDirection được set là Axis.
         horizontal, tức là nó cho phép trang cuộn ngang (trái sang phải). Nếu bạn muốn trang cuộn dọc (từ trên xuống dưới) thì bạn có thể set
         scrollDirection là Axis.vertical.*/
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return buildIndicator(index == _currentIndex, size);
                  /*Ở trong hàm itemBuilder, đầu tiên nó sử dụng biểu thức so sánh index == _currentIndex để kiểm tra xem chỉ số của phần tử hiện tại có bằng
          với chỉ số của phần tử đang được chọn hiển thị hay không. Nếu bằng, nó trả về một Widget được tạo bởi hàm buildIndicator với tham số đầu tiên
          là true và tham số thứ hai là size. Ngược lại, nếu không bằng, nó trả về một Widget được tạo bởi hàm buildIndicator với tham số đầu tiên là
          false và tham số thứ hai là size.*/
                }),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          setState(() {
            //  getEnglishToday();
          });
        },
        child: Image.asset(AppAssets.exchange),
      ),

      //=====thanh công cụ========

      drawer: Drawer(
        child: Container(
          color: AppColors.lighBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16),
                child: Text(
                  'Your mind',
                  style: AppStyles.h3.copyWith(color: AppColors.textColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: AppButton(
                    label: 'Favorites',
                    onTap: () {
                      print('Favorites');
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: AppButton(
                    label: 'Your control',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ControlPage()));
                      /*Navigator là một widget được sử dụng để quản lý việc điều hướng giữa các màn hình trong ứng dụng.
                        Ở đây, phương thức push được sử dụng để đẩy một màn hình mới lên đầu ngăn xếp của Navigator và hiển
                        thị nó trên màn hình. MaterialPageRoute được sử dụng để định nghĩa cách thức hiển thị và chuyển đổi
                        giữa các màn hình. Tron; g đó, builder được sử dụng để tạo ra màn hình ControlPage mới.
*/
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: AppButton(
                    label: 'App Food',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ControlPage()));
                      /*Navigator là một widget được sử dụng để quản lý việc điều hướng giữa các màn hình trong ứng dụng.
                        Ở đây, phương thức push được sử dụng để đẩy một màn hình mới lên đầu ngăn xếp của Navigator và hiển
                        thị nó trên màn hình. MaterialPageRoute được sử dụng để định nghĩa cách thức hiển thị và chuyển đổi
                        giữa các màn hình. Tron; g đó, builder được sử dụng để tạo ra màn hình ControlPage mới.
*/
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: isActive ? size.width * 1 / 5 : 24,
      decoration: BoxDecoration(
          color: isActive ? AppColors.lighBlue : AppColors.lightGrey,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(2, 3), blurRadius: 3),
          ]),
    );
  }
}
