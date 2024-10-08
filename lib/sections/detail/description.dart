import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class Description extends StatefulWidget {
  final String text;
  final int trimLength;

  const Description({
    super.key,
    required this.text,
    this.trimLength = 100,
  });

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final displayText = isExpanded || widget.text.length <= widget.trimLength
        ? widget.text
        : '${widget.text.substring(0, widget.trimLength)}...';

    return RichText(
      text: TextSpan(
        text: displayText,
        style: TextStyle(
            color: ColorMain.third[100],
            fontSize: 14,
            letterSpacing: 0.8,
            height: 1.25,
            fontWeight: FontWeight.w400),
        children: [
          if (widget.text.length > widget.trimLength)
            TextSpan(
              text: isExpanded ? ' Show less' : ' Read more',
              style: const TextStyle(
                  fontSize: 14,
                  color: ColorMain.primary,
                  fontWeight: FontWeight.w600),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
            ),
        ],
      ),
    );
  }
}
