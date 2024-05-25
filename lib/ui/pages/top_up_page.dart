import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_sha/ui/widgets/bank_item.dart';

class TopUp extends StatelessWidget {
  const TopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children:  [
          const SizedBox(height: 30,),
          BankItem(name: '', imageUrl: '', time: '')
        ],
      ),
    );
  }
}

  