import 'package:cryptic_hunt/networking/ApiService.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import '../data/question_group.dart';

class QuestionGroupListNotifier extends ChangeNotifier {
  bool busy = false;
  List<QuestionGroup> questionGroups = [];
  late ApiService api;

  QuestionGroupListNotifier() {
    api = GetIt.I<ApiService>();
  }

  Future<void> getQuestionGroups() async {
    isBusy(true);
    questionGroups =
        await api.getQuestionGroup(endpoint: "/questiongroups") ?? [];
    isBusy(false);
  }

  void isBusy(bool x) {
    if (x != busy) {
      busy = x;
      notifyListeners();
    }
  }
}
