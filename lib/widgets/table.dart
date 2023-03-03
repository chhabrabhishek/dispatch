import 'package:flutter/material.dart';
import 'package:libadwaita/libadwaita.dart';
import 'package:collection/collection.dart';

class TableWidget extends StatefulWidget {
  const TableWidget({super.key});

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  static List<TableModel> tableModelList = [
    TableModel("", "", true, TextEditingController(), TextEditingController())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: tableModelList
              .mapIndexed(
                (index, item) => Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 30,
                      child: TextField(
                        controller: item.paramTextEditingController,
                        onChanged: (text) {
                          tableModelList[index].param = text;
                        },
                        decoration: InputDecoration(
                          hintText: 'Parameter ${index + 1}',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.zero),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.zero),
                          disabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.zero),
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        ),
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 30,
                      child: TextField(
                        controller: item.valueTextEditingController,
                        onChanged: (text) {
                          tableModelList[index].value = text;
                        },
                        decoration: InputDecoration(
                          hintText: 'Value ${index + 1}',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.zero),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.zero),
                          disabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.zero),
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        ),
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.2,
                          ),
                        ),
                        child: IconButton(
                          splashRadius: 15,
                          iconSize: 15,
                          icon: Icon(
                            item.isEnabled
                                ? Icons.check_circle_rounded
                                : Icons.circle_outlined,
                          ),
                          color: Colors.green,
                          onPressed: () => {
                            setState(() => item.isEnabled = !item.isEnabled)
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.2,
                          ),
                        ),
                        child: IconButton(
                          splashRadius: 15,
                          iconSize: 15,
                          icon: const Icon(
                            Icons.delete_rounded,
                            // size: 15,
                          ),
                          color: Colors.red,
                          onPressed: () => {
                            if (tableModelList.length != 1)
                              {
                                setState(
                                  () => {
                                    tableModelList.removeAt(index),
                                  },
                                )
                              }
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
              .toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: AdwButton(
            onPressed: () => {
              setState(
                () => {
                  tableModelList.add(TableModel("", "", true,
                      TextEditingController(), TextEditingController())),
                },
              )
            },
            child: const Text(
              'Add',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

class TableModel {
  String param;
  String value;
  bool isEnabled;
  TextEditingController paramTextEditingController;
  TextEditingController valueTextEditingController;
  TableModel(this.param, this.value, this.isEnabled,
      this.paramTextEditingController, this.valueTextEditingController);
}
