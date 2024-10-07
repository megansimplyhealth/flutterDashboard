import 'package:flutter/material.dart';

class DropdownItem {
  final String label;
  final String address;

  DropdownItem({required this.label, required this.address});
}

class LabelDropDown extends StatefulWidget {
  final String label;
  final List<DropdownItem> items;

  LabelDropDown({required this.label, required this.items});

  @override
  _LabelDropDownState createState() => _LabelDropDownState();
}

class _LabelDropDownState extends State<LabelDropDown> {
  DropdownItem? selectedItem;
  bool isDropdownOpen = false; // To track if dropdown is open or not

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label acts as a clickable button
        InkWell(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen; // Toggle dropdown visibility
            });
          },
          child: Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Text(widget.label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
              //decoration: ,
            )),
    const Icon(Icons.expand_more_outlined)]),
          // child: 
          // ),
        ),
    if (isDropdownOpen)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.items.map((item) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem = item;
                    isDropdownOpen = false; // Close dropdown after selection
                    print('Selected ${widget.label} Address: ${selectedItem!.address}');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    item.label,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              );
            }).toList(),
          ),
      ],
    );
  }
}