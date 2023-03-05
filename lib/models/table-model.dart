import 'package:flutter/material.dart';

class TableModel {
  String param;
  String value;
  bool isEnabled;
  TextEditingController paramTextEditingController;
  TextEditingController valueTextEditingController;
  String fileName;
  TableModel(this.param, this.value, this.isEnabled,
      this.paramTextEditingController, this.valueTextEditingController,
      [this.fileName = ""]);
}
