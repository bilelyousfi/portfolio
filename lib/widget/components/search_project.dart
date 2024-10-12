import 'package:flutter/material.dart';
import '../../helper/app_colors.dart';

class SearchInput extends StatefulWidget {
  final Function(String) onSearch;
  final String initial;

  const SearchInput({
    super.key,
    required this.onSearch,
    this.initial = '',
  });

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initial);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        controller: _controller,
        onChanged: (value) {
          widget.onSearch(value);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.bgColor,
          labelText: 'Search a project',
          labelStyle: TextStyle(
            fontFamily: 'Roboto',
            color: AppColors.secondColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.secondColor.withOpacity(0.5),
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.secondColor,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.secondColor.withOpacity(0.5),
              width: 1.0,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.SelectedColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.search, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
