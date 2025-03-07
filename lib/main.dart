import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Roberto Cerna: 22308051281055',
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 6, 45, 117),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(label: "Primary", color: Colors.blue, icon: Icons.home),
                  SizedBox(width: 8),
                  CustomButton(label: "Secondary", color: Colors.purple, icon: Icons.work),
                  SizedBox(width: 8),
                  CustomButton(label: "Success", color: Colors.green, icon: Icons.check),
                ],
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(label: "Danger", color: Colors.red, icon: Icons.warning),
                  SizedBox(width: 8),
                  CustomButton(label: "Warning", color: Colors.orange),
                  SizedBox(width: 8),
                  CustomButton(label: "Info", color: Colors.cyan),
                ],
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(label: "Light", color: Colors.grey),
                  SizedBox(width: 8),
                  CustomButton(label: "Dark", color: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  final String label;
  final Color color;
  final IconData? icon;

  const CustomButton({
    required this.label,
    required this.color,
    this.icon,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click, // Cambia el cursor a "pointer" (mano)
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: _isHovered ? widget.color.withOpacity(0.8) : widget.color,
          borderRadius: BorderRadius.circular(0),
        ),
        child: Row(
          children: [
            if (widget.icon != null) Icon(widget.icon, color: Colors.white),
            if (widget.icon != null) SizedBox(width: 6),
            Text(
              widget.label,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(width: 6),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Text(
                "6",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}