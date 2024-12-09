import 'package:flutter/material.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/add_to_do_form.dart';

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
      backgroundColor: Colors.grey[50],
      content: SizedBox(
        width: screenWidth * 0.96,
        height: screenHeight * 0.3,
        child: const AddToDoFormWidget(),
      ),
    );
  }
}
