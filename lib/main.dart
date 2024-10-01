import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Cubit/Add_note_Cubit/add_Note_Cubit.dart';
import 'package:note_app/Views/editNoteView.dart';
import 'package:note_app/Views/note_view.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_Model.dart';
import 'package:note_app/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = SimpleBlocObserver();
  runApp(const noteApp());
}

// ignore: camel_case_types
class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Editnoteview.id: (context) => const Editnoteview(),
          NoteView.id: (context) => const NoteView(),
        },
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey.shade900,
            fontFamily: "Poppins"),
        home: const NoteView(),
      ),
    );
  }
}
