import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class search extends StatefulWidget {
  const search({super.key});


  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  var selecteditem=null;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownSearch<String>(
          popupProps: PopupProps.menu(
            showSelectedItems: true,
            showSearchBox: true,
            disabledItemFn: (String s) => s.startsWith('I'),
          ),
          items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelText: "Menu mode",
              hintText: "country in menu mode",
            ),
          ),
          onChanged:(val){print(val);},
          selectedItem: selecteditem,
        )
      ],
    );
  }
}
