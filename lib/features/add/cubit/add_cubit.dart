import 'dart:async';

import 'package:bloc/bloc.dart';
// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(const AddState());

  Future<void> add(String title, String imageURL, DateTime releaseDate,) 
  async {
    try {
      throw Exception('Cos poszlo nie tak');
      // await FirebaseFirestore.instance.collection('items').add(
      //   {
      //     'title': title,
      //     'image_url': imageURL,
      //     'release_date': releaseDate,
      //   },
      // );
      // ignore: dead_code
      emit(const AddState(saved: true));
    } catch (error) {
      emit(AddState(errorMessage: error.toString()));
    }
  }
}
