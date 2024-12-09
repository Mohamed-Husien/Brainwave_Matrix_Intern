import 'package:brainwave_matrix_intern_to_do_app/cubits/add_to_do_cubit/add_to_do_cubit.dart';
import 'package:brainwave_matrix_intern_to_do_app/cubits/to_do_cubit/to_do_cubit.dart';
import 'package:brainwave_matrix_intern_to_do_app/models/to_do_item_model.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_button.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 24),
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
                BlocBuilder<AddToDoCubit, AddToDoState>(
                  builder: (context, state) {
                    return CustomButton(
                      text: "Add",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          try {
                            var toDoItemModel = ToDoItemModel(
                              content: content!,
                              currentDate: DateFormat('hh:mm a, d, yyyy')
                                  .format(DateTime.now())
                                  .toString(),
                              checkBoxValue: false,
                            );
                            BlocProvider.of<AddToDoCubit>(context).addToDo(
                                toDoItemModel); //here i add toDoModel to hive
                            BlocProvider.of<ToDoCubit>(context)
                                .fetchAllToDo(); //to refresh the list of to do after close dialog
                            Navigator.pop(context);
                          } catch (e) {
                            throw (e.toString());
                          }
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    );
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
