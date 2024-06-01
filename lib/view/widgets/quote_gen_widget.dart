import 'dart:convert';
import 'dart:io';

import 'package:bitti_gitti/models/quote.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QuoteGenerator extends StatefulWidget {
  const QuoteGenerator({super.key});

  @override
  State<QuoteGenerator> createState() => _QuoteGeneratorState();
}

class _QuoteGeneratorState extends State<QuoteGenerator> {
  late Future<Quote> futureQuote;

  @override
  void initState() {
    super.initState();
    futureQuote = fetchQuote();
  }

  Future<Quote> fetchQuote() async {
    final response = await http.get(Uri.parse(
        'https://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en'));

    if (response.statusCode == HttpStatus.ok) {
      String responseBody = response.body.replaceAll(r"\", "");
      return Quote.fromJson(jsonDecode(responseBody));
    } else {
      throw Exception('Failed to load quote');
    }
  }

  void getNewQuote() {
    setState(() {
      futureQuote = fetchQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: FutureBuilder<Quote>(
            future: futureQuote,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        snapshot.data!.quoteText!,
                        style: const TextStyle(
                            fontFamily: 'BodyFont', fontSize: 28),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "- ${snapshot.data!.quoteAuthor!}",
                      style: const TextStyle(
                          fontFamily: 'BodyFont',
                          fontSize: 32,
                          color: Colors.teal),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return const Center(
                    child: Text(
                  'Cümle getirilemedi! \nTekrar deneyelim :)',
                  style: TextStyle(fontFamily: 'BodyFont', fontSize: 28),
                ));
              }

              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.teal),
            ),
            onPressed: getNewQuote,
            icon: const Icon(
              Icons.rotate_left_sharp,
              size: 36,
              color: Colors.white,
            ),
            label: const Text(
              'Yeni Alıntı getir',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'BodyFont', fontSize: 28),
            ))
      ],
    );
  }
}
