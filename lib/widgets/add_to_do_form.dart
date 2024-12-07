import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_button.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

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
