import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatCurrency(int value, {String symbol = 'Rp '}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: symbol,
    decimalDigits: 0,
  ).format(value);
}

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: Colors.grey,
    maxWidth: 300,
    borderRadius: BorderRadius.circular(10),
    duration: const Duration(milliseconds: 2000),
  ).show(context);
}

void showDefaultSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.grey[500],
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
      duration: const Duration(milliseconds: 1000),
    ),
  );
}
