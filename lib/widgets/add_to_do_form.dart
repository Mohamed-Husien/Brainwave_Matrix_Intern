import 'dart:developer';

import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_button.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddToDoFormWidget extends StatefulWidget {
  const AddToDoFormWidget({
    super.key,
  });

  @override
  State<AddToDoFormWidget> createState() => _AddToDoFormWidgetState();
}

class _AddToDoFormWidgetState extends State<AddToDoFormWidget> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextFormField(
              onSaved: (value) {
                content = value;
              },
              hint: 'Add New Task ',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: "Cancel",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CustomButton(
                  text: "Add",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
