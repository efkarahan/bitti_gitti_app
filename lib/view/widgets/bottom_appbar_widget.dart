import 'package:bitti_gitti/view/screens/quote_screen.dart';
import 'package:flutter/material.dart';

class BuildBottomBar extends StatelessWidget {
  const BuildBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 14.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            minWidth: 120,
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.list_alt_rounded,
                    color: Theme.of(context).iconTheme.color),
                Text(
                  'tasks',
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
          MaterialButton(
            minWidth: 120,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuoteScreen(),
                  ));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.format_quote_sharp,
                    color: Theme.of(context).iconTheme.color),
                Text(
                  'quotes',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
