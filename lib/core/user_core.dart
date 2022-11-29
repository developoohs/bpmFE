import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';

abstract class BaseViewModel {
  String name;
  BuildContext context;

  void setContext() {
    this.context = context;
  }

  void setGlobal(String id);

  BaseViewModel(this.context, this.name);
}
