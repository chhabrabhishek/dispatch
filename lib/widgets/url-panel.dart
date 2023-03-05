import 'package:flutter/material.dart';
import 'package:libadwaita/libadwaita.dart';

class UrlPanelWidget extends StatefulWidget {
  const UrlPanelWidget({super.key});

  @override
  State<UrlPanelWidget> createState() => _UrlPanelWidgetState();
}

class _UrlPanelWidgetState extends State<UrlPanelWidget> {
  static const List<String> requestMethodOptions = <String>['GET', 'POST'];
  String dropdownValue = requestMethodOptions.first;
  final TextEditingController _uriTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          height: 30,
          child: DropdownButtonFormField<String>(
            value: dropdownValue,
            style: const TextStyle(fontSize: 10),
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            iconSize: 10,
            menuMaxHeight: 100,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.zero),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.zero),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.zero,
              ),
              fillColor: Colors.transparent,
              hoverColor: Colors.transparent,
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            ),
            items: requestMethodOptions
                .map<DropdownMenuItem<String>>((String value) =>
                    DropdownMenuItem(value: value, child: Text(value)))
                .toList(),
            onChanged: (String? value) =>
                {setState(() => dropdownValue = value!)},
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          height: 30,
          child: TextField(
            controller: _uriTextEditingController,
            onChanged: (text) {},
            decoration: const InputDecoration(
              hintText: 'URL',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 10,
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.zero),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.zero),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.zero),
              fillColor: Colors.transparent,
              hoverColor: Colors.transparent,
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            ),
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.12,
            height: 30,
            child: AdwButton(
              backgroundColor: Colors.white,
              onPressed: () => {
                setState(
                  () => {},
                )
              },
              child: const Text(
                'Send',
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}
