import 'package:brainwave_matrix_intern_to_do_app/widgets/add_to_do_form.dart';

import 'package:flutter/material.dart';

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: Colors.yellow[50],
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: screenHeight * 0.3,
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: const AddToDoFormWidget(),
      ),
    );
  }
}
