import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onAccept;
  final VoidCallback onCancel;

  final String acceptText;
  final String cancelText;

  final bool isLoading;

  final Color? acceptBackgroundColor;
  final Color? cancelBackgroundColor;

  final Color? acceptTextColor;
  final Color? cancelTextColor;

  final TextStyle? acceptTextStyle;
  final TextStyle? cancelTextStyle;

  final double height;

  const ActionButtons({
    super.key,
    required this.onAccept,
    required this.onCancel,
    this.acceptText = "Aceptar",
    this.cancelText = "Cancelar",
    this.isLoading = false,
    this.acceptBackgroundColor,
    this.cancelBackgroundColor,
    this.acceptTextColor,
    this.cancelTextColor,
    this.acceptTextStyle,
    this.cancelTextStyle,
    this.height = 48,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        /// ACCEPT BUTTON
        SizedBox(
          height: height,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  acceptBackgroundColor ?? theme.colorScheme.primary,
              foregroundColor: acceptTextColor ?? Colors.white,
              textStyle:
                  acceptTextStyle ??
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onPressed: isLoading ? null : onAccept,
            child: isLoading
                ? SizedBox(
                    height: 18,
                    width: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: acceptTextColor ?? Colors.white,
                    ),
                  )
                : Text(acceptText),
          ),
        ),

        const SizedBox(height: 8),

        /// CANCEL BUTTON
        SizedBox(
          height: height,
          width: double.infinity,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: cancelBackgroundColor ?? Colors.transparent,
                width: 1.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor: cancelBackgroundColor ?? Colors.transparent,
              foregroundColor: cancelTextColor ?? theme.colorScheme.primary,
              textStyle:
                  cancelTextStyle ??
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            onPressed: isLoading ? null : onCancel,
            child: Text(cancelText),
          ),
        ),
      ],
    );
  }
}
