import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/add_botton.dart';
import 'package:note_app/Views/widgets/custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SingleChildScrollView(
        child: addNoteForm(),
      ),
    );
  }
}

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

// ignore: camel_case_types
class _addNoteFormState extends State<addNoteForm> {
  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          CustomTextFormField(
            title: "Title",
            onSaved: (p0) {
              title = p0;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onSaved: (p0) {
              content = p0;
            },
            title: "Content",
            maxline: 5,
          ),
          const SizedBox(
            height: 100,
          ),
          AddBotton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
