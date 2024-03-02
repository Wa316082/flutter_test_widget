import 'package:flutter/material.dart';
import 'quotes.dart';
class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 6.0),
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red[800],
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
                onPressed: () {
                  delete();
                },
                label: Text('Delete quote'),
                icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}