import 'package:flutter/material.dart';

class TopBarElement extends StatefulWidget {
  // Attributes.
  final String text;
  final VoidCallback onTap;

  const TopBarElement({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  State<TopBarElement> createState() => _TopBarElementState();
}

class _TopBarElementState extends State<TopBarElement> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => setState(() => value ? _isHovering = true : _isHovering = false),
      onTap: widget.onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              color: _isHovering ? const Color(0xFF077bd7) : const Color(0xFF077bd7),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            visible: _isHovering,
            child: Container(
              height: 2,
              width: 20,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
