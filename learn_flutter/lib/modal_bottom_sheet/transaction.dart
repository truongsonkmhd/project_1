import 'package:flutter/material.dart';
class Transaction {
  String content;
  double amount;
  DateTime createdDate;
  //constructor
  Transaction({required this.content, required this.amount, required this.createdDate});

  @override
  String toString() {
    return 'content: $content, amount: $amount';
  }
}