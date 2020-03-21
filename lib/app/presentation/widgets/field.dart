import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';

class TitleInputField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  const TitleInputField({
    Key key,
    this.controller,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _decoration,
      controller: controller,
      focusNode: focusNode,
    );
  }
}

class EditorInputField extends StatelessWidget {
  final double height;
  final ZefyrController controller;
  final FocusNode focusNode;

  const EditorInputField({
    Key key,
    this.height,
    @required this.controller,
    @required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final editorHeight = MediaQuery.of(context).size.height * 0.65;

    return ZefyrField(
      decoration: _decoration,
      height: height ?? editorHeight,
      controller: controller,
      focusNode: focusNode,
    );
  }
}

InputDecoration _decoration = InputDecoration(
  border: OutlineInputBorder(
    // borderRadius: BorderRadius.circular(10),
  ),
);
