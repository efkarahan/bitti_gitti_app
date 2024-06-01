import 'package:bitti_gitti/view/widgets/quote_gen_widget.dart';
import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text('Quote'),automaticallyImplyLeading: true,),
      body: buildContent(),
    );
  }

  Widget buildContent() {
    return Container(
      color: Colors.grey.shade400,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          QuoteGenerator(),
        ],
      ),
    );
  }
}
