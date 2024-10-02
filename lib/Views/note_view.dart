import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubit/note_Cubit/note_cubit_cubit.dart';
import 'package:note_app/Views/widgets/custom_AppBar_Widget.dart';
import 'package:note_app/Views/widgets/add_Note_Bottom_Sheet.dart';
import 'package:note_app/Views/widgets/note_list_View.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "noteView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff62fcd7),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.grey.shade900,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 24),
          child: Column(
            children: [
              CustomAppBar(
                text: "Notes",
                icon: Icons.search,
              ),
              Expanded(child: NoteListView()),
            ],
          ),
        ),
      ),
    );
  }
}
