import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/Cubit/Add_note_Cubit/add_Note_Cubit.dart';
import 'package:note_app/Views/widgets/add_botton.dart';
import 'package:note_app/Views/widgets/custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFaliur) {
          debugPrint("faliure ${state.errorMessage}");
        }
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: SingleChildScrollView(
            child: ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const AddNoteForm()),
          ),
        );
      },
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

// ignore: camel_case_types
class _AddNoteFormState extends State<AddNoteForm> {
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
