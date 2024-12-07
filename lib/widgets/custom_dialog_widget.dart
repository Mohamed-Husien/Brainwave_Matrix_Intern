import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_button.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: screenHeight * 0.3,
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          color: Colors.yellow[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: const AddToDoFormWidget(),
      ),
    );
  }
}

class AddToDoFormWidget extends StatelessWidget {
  const AddToDoFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 24,
        ),
        CustomTextFormField(
          hint: 'Add New Task ',
        ),
        Row(
          children: [
            CustomButton(
              text: 'Add',
            ),
          ],
        )
      ],
    );
  }
}
