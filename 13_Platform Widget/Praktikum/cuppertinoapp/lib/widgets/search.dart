import 'package:flutter/cupertino.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      height: 50,
      child: CupertinoTextField(
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(15),
        ),
        placeholder: 'Search',
        textAlign: TextAlign.center,
      ),
    );
  }
}
