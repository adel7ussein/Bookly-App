import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(borderColor: Colors.white),
          focusedBorder: buildOutlineInputBorder(borderColor: Colors.white),
          hintText: 'Search',
          suffixIcon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color borderColor}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(12));
  }
}
