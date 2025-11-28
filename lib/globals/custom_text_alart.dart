import 'package:flutter/material.dart';

class CustomTextAlart extends StatelessWidget {
  final String data;
  final Key? key;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomTextAlart(
    this.data, {
    this.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
        backgroundColor: Colors.transparent,
        child: _AlertContent(message: data),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: key ??
          ValueKey(
              data + "_" + DateTime.now().millisecondsSinceEpoch.toString()),
      onTap: () => _showAlert(context),
      child: Text(
        data,
        style: style,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }
}

class _AlertContent extends StatelessWidget {
  final String message;
  const _AlertContent({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280, // 👈 Compact width
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black87,
              blurRadius: 20,
              offset: Offset(0, 8),
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Alert! you pressed on",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              message,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 80,
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF0EA5E9)),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 10),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child: const Text(
                  "OK",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
