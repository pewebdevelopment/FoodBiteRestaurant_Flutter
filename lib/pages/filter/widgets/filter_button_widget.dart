import 'package:flutter/material.dart';

import '../../../components/custom_outline_raw_material_button.dart';

class FilterButtonWidget extends StatefulWidget {
  final String title;
  final Color color1;
  final Color color2;
  final bool checked;
  final void Function()? onPressed;

  const FilterButtonWidget({
    Key? key,
    required this.title,
    required this.color1,
    required this.color2,
    required this.checked,
    this.onPressed,
  }) : super(key: key);
  @override
  _FilterButtonWidgetState createState() => _FilterButtonWidgetState();
}

class _FilterButtonWidgetState extends State<FilterButtonWidget> {
  late bool _checked;
  @override
  void initState() {
    _checked = widget.checked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _checked
        ? RawMaterialButton(
            onPressed: () {
              setState(() {
                _checked = !_checked;
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            padding: EdgeInsets.all(0),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    widget.color1.withOpacity(0.65),
                    widget.color2.withOpacity(0.65),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 14, bottom: 10),
                alignment: Alignment.center,
                child: Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        : Container(
            width: double.infinity,
            child: CustomOutlineRawMaterialButton(
              title: widget.title,
              onPressed: () {
                setState(() {
                  _checked = !_checked;
                });
              },
            ),
          );
  }
}
