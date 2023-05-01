import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:learn_flutter/studyDart/khai_bao_bien.dart';
import 'transaction.dart';

class TransactionList extends StatelessWidget{
  // Mã này bao gồm một lớp TransactionList để hiển thị danh sách giao dịch.
  final List<Transaction> transactions;
  //Lớp TransactionList có một thuộc tính là transactions là một danh sách các
  // đối tượng giao dịch. Nó được truyền vào qua hàm khởi tạo để tạo danh sách giao dịch.
  TransactionList({required this.transactions});

  ListView _buildListView() {
    return ListView.builder(
        itemCount: transactions.length, // chỉ định số lương các mục trong danh sách
        itemBuilder: (context, index){ // content là nội dung bên trong từng thẻ, index là số phân tử thẻ (chưa xem có bao nhiêu thẻ trong một list)
          //để xây dựng từng mục trong danh sách. Mỗi mục trong danh sách là một
          // thẻ Card chứa thông tin về một giao dịch, bao gồm một hình ảnh Icon, tiêu đề và mô tả.
          return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              color: (index) % 2 == 0 ? Colors.pink : Colors.lightBlueAccent,
              elevation: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start, // để nó lui hết vào đầu dòng
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10),), // padding cho toàn b con trong "row"
                Column( // chứa cột tên(content) và date
                  crossAxisAlignment: CrossAxisAlignment.start, // để cho các con của nó lùi hết lên trên vì là (column)
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top:10)),
                    Text( 'Product: ' +transactions[index].content,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    Text('Date: ${DateFormat.yMd().format(transactions[index].createdDate)}',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    Padding(padding: EdgeInsets.only(bottom:10)),
                  ],
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(26.0),
                      child: Text('${transactions[index].amount}\$',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                          borderRadius:BorderRadius.all(Radius.circular(10))
                ),
                    ),

                  ],
                )),
              ],
            ),

          );

        }
    );
  }

  @override
  Widget build(BuildContext context) { //
    //Now how to make this "Scrollable", let use ListView:
    //1.ListView(children: <Widget>[]) => this loads all children at the same time( load các con của nó cùng một lúc) // phù hơp với độ dài hữu hạn
    //2.ListView(itemBuilder: ...) => this loads only visible items( load những item nhìn thấy) // phù hợp với độ dài lớn
    return Container(
        height: 500, // để xét độ dài cho transaction list nếu nó có hiện bàn phm nó cũng sẽ không bị lỗi
        child: _buildListView()
    );
  }
}