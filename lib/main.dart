import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';
void main() => runApp(
  const MaterialApp(
    home: quoteList(),
  )
);

class quoteList extends StatefulWidget {
  const quoteList({super.key});

  @override
  State<quoteList> createState() => _quoteListState();
}


class _quoteListState extends State<quoteList> {
  List<Quotes> quotes = [
    Quotes(text: 'Be yourself; everyone else is already taken', author: 'Oscar Wilde'),
    Quotes(text: 'I have nothing to declare except my genius', author: 'Oscar Wilde'),
    Quotes(text: 'The truth is rarely pure and never simple', author: 'Oscar Wilde'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Qoute List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],

      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote:quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}



