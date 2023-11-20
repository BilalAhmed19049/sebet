import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  // final double height;
  final double width;
  final IconData suffixIcon;
  final Color suffixIconColor;
  final Color fillColor;
  final List<DropdownMenuItem<String>> items;

  const DropdownWidget({
    Key? key,
    // required this.height,
    required this.width,
    required this.suffixIcon,
    required this.suffixIconColor,
    required this.items,
    required this.fillColor,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<DropdownWidget> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        // height: widget.height,
        width: widget.width,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: 'Select option',
            fillColor: widget.fillColor,
            filled: true,
            suffixIcon: Icon(
              widget.suffixIcon,
              color: widget.suffixIconColor,
              size: 27,
            ),
          ),
          value: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value as String?;
            });
          },
          items: widget.items,
          icon: SizedBox(
            height: 0,
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: Center(
//         child: DropdownWidget(
//           height: 50,
//           width: 200,
//           suffixIcon: Icons.arrow_drop_down,
//           suffixIconColor: Colors.blue,
//           items: [
//             DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
//             DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
//             DropdownMenuItem(value: 'Option 3', child: Text('Option 3')),
//             DropdownMenuItem(value: 'Option 4', child: Text('Option 4')),
//           ],
//         ),
//       ),
//     ),
//   ));
// }
