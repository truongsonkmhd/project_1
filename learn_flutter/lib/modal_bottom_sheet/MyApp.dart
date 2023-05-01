import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'TransactionList.dart';
import 'transaction.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _contentController = TextEditingController();
  final _amountController = TextEditingController();
  late String _content;
  late double _amount;

// define states
  Transaction _transaction = Transaction(content: '',
      amount: 0.0,
      createdDate: DateTime
          .now()); // DateTime.now: nó sẽ lấy gtri mặc định là thời gian hiện tại
  List<Transaction> _transactions = <Transaction>[];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }


  void _insertTransaction() {
    //You must validate information first // bạn phải xác thực thông tin trước
    if (_transaction.content.isEmpty ||
        _transaction.amount == 0.0 ||
        _transaction.amount.isNaN) {
      // // để kiểm tra xem  transaction có rỗng hay không nếu  nó "rỗng" hoặc "=0" hoặc "isNaN: not is number - không phải là số  thí nó sẽ return luôn chứ không in ra danh sách
      return;
    }

    // _transaction.createdDate = DateTime.now();
    _transactions.add(_transaction);
    //được sử dụng để thêm đối tượng giao dịch hiện tại vào danh sách giao dịch.
    _transaction = Transaction(content: '',
        amount: 0.0,
        createdDate: DateTime
            .now()); // DateTime.now: nó sẽ lấy gtri mặc định là thời gian hiện tại
    // được sử dụng để tạo một đối tượng giao dịch mới và đặt giá trị của thuộc tính content và amount thành giá trị mặc định là '' và 0.0.
    _contentController.text = '';
    _amountController.text = '';
    //Dòng thứ ba và thứ tư _contentController.text = ''; _amountController.text = ''; được sử dụng để xóa nội dung của các trường nhập liệu.
  }

  void _onButtonShowModalSheet() {
    showModalBottomSheet(
        context: this.context,
        builder: (context) {
          return Column(
            children: <Widget>[
          Container(padding: EdgeInsets.all(10), child: TextField(
          decoration: InputDecoration(labelText: 'Content'),
                controller: _contentController,
                onChanged: (text) {
                  //Hàm onChanged này sẽ cập nhật giá trị của biến _content với giá trị mới mỗi khi TextField được thay đổi.
                  setState(() {
                    //   _content = text;
                    _transaction.content = text;
                  });
                },
              )),
          Container(padding: EdgeInsets.all(10), child:TextField(
          decoration: InputDecoration(labelText: 'Amount(money)'),
                controller: _amountController,
                onChanged: (text) {
                  //Hàm onChanged này sẽ cập nhật giá trị của biến _content với giá trị mới mỗi khi TextField được thay đổi.
                  setState(() {
                    _transaction.amount = double.tryParse(text) ?? 0;
                    //nếu chuỗi text không phải là một số hợp lệ, biến _amount sẽ
                    // có giá trị bằng 0. Nếu chuỗi text là một số hợp lệ, biến _amount
                    // sẽ có giá trị bằng giá trị số thực được chuyển đổi từ chuỗi text.
                  });
                },
              )),

              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex:3,
                      child: Container(
                        height: 50,
                        color: Colors.teal,
                        child: TextButton(
                          onPressed: () {
                            print('press Save');
                            setState(() {
                              this._insertTransaction();
                            });
                           Navigator.of(context).pop(); // để khi ta nhấp vào nó sẽ thoát khỏi cái ta đang xét
                          },
                          child: Text('Save', style: TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        color: Colors.pinkAccent,
                        child: TextButton(
                          onPressed: () {
                            print('Press cancel');
                            Navigator.of(context).pop();// để khi ta nhấp vào nó sẽ thoát khỏi cái ta đang xét
                          },
                          child: Text('Cancel', style: TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // cách 1 add 1 phần tử trong list transaction mà không phải bấm (insert transaction)
      appBar: AppBar(
        title: const Text('Transaction manager'
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  this._onButtonShowModalSheet();
                });
              }),
        ],
      ),
      // cách 2 add 1 phần tử trong list transaction mà không phải bấm (insert transaction)
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add transaction',
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            this._onButtonShowModalSheet();
          });
        },

      ),



      key: _scaffoldKey,
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView( // để cuộn transaction list
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // ButtonTheme(
              //   height: 50,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       this._onButtonShowModalSheet();
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         SnackBar(
              //           content: Text('Transaction list: ${_transactions.toString()}'),
              //           duration: Duration(seconds: 3),
              //         ),
              //       );
              //     },
              //     child: Padding(
              //       padding: const EdgeInsets.only(top: 50),
              //       child: Text(
              //         'Insert Transaction',
              //         style: const TextStyle(fontSize: 18),
              //       ),
              //     ),
              //   ),
              // ),
               Container(
          margin: const EdgeInsets.only(top: 100),
          child: ElevatedButton(
            onPressed: () {
              // code xử lý dữ liệu:
              this._onButtonShowModalSheet();
              ScaffoldMessenger.of(context).showSnackBar(
                /*Ví dụ, trong khi thực hiện một tác vụ như tải xuống dữ liệu từ mạng, ứng dụng
                có thể hiển thị một thông báo tạm thời để thông báo cho người dùng biết rằng dữ
                liệu đang được tải xuống. Các thông báo này sẽ tự động biến mất sau một khoảng
                thời gian nhất định (được xác định bởi thuộc tính duration), hoặc có thể được
                đóng bằng cách bấm vào nút "Đóng" trên thông báo.*/
                SnackBar(
                  content: Text('Transaction list: ${_transactions.toString()}'),
                  duration: Duration(seconds: 4),
                ),
              );
            },
            child: Text(
              'Insert Transaction',
              style: const TextStyle(fontSize: 18),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
            ),
          ),
        ),


          TransactionList(transactions: _transactions),
              // để add cái list Transaction ( phải import thư viên mới dùng được)
            ],
          ),
        ),
      ),
    );
  }
}

