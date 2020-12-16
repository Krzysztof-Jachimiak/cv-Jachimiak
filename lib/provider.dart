import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//text Provider
final textProvider = Provider<String>((ref) => 'hello');
//to jest provider dostarczający hello do home

//to będzie provider który w przyszłości czyli po 4 sekundach zwróci 5
//trzena to będzie zastosować w home
final futureProvider = FutureProvider<Image>((ref) async {
  await Future.delayed(Duration(seconds: 6));
  return Image.asset('assets/daria.jpg');
});

//tu podobnie ze strumieniem
final streamProvider = StreamProvider<int>((ref) {
  return Stream.periodic(Duration(seconds: 1), (number) {
    if (number < 5) {
      return number + 1;
    } else {
      return 5;
    }
  });
});

//provider stanu
final stateProvider = StateProvider<int>((ref) => 0);

//provider
