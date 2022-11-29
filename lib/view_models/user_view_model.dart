import 'package:flutter/material.dart';
import 'package:procman/core/user_core.dart';

class UserViewModel extends BaseViewModel {
  UserViewModel(BuildContext context, name) : super(context, name);

  @override
  String get name => super.name;

  @override
  void setContext() {
    super.setContext();
  }

  @override
  void setGlobal(String id) {
    // TODO: implement setGlobal
  }

  void showAlert(Widget child) {
    showDialog(builder: (context) => child, context: context);
  }
}
