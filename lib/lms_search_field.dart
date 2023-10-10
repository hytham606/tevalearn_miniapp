import 'package:flutter/material.dart';

import 'package:soar_quest/soar_quest.dart';

class LMSSearchField extends SQField<String> {
  LMSSearchField(super.name, {this.maxLines = 1});

  final int maxLines;

  @override
  formField(docScreen) => _LMSSearchFormField(this, docScreen);
}

class _LMSSearchFormField extends SQFormField<String, LMSSearchField> {
  const _LMSSearchFormField(super.field, super.docScreen);

  @override
  Widget fieldLabel(BuildContext context) => Container();

  @override
  fieldBuilder(context) =>
      LMSTextField(this, textParse: (text) => text, maxLines: field.maxLines);
}

class LMSTextField<T> extends StatefulWidget {
  const LMSTextField(
    this.formField, {
    super.key,
    required this.textParse,
    this.maxLines = 1,
    this.numeric = false,
  });

  final SQFormField<T, SQField<T>> formField;
  final T Function(String) textParse;
  final int maxLines;
  final bool numeric;

  @override
  LMSTextFieldState createState() => LMSTextFieldState();
}

class LMSTextFieldState extends State<LMSTextField<dynamic>> {
  final fieldTextController = TextEditingController();

  void callOnChange() {
    widget.formField.docScreen.refresh();
    setState(() {});
  }

  String parseFieldValue() => (widget.formField.getDocValue() ?? '').toString();

  @override
  void initState() {
    fieldTextController.text = parseFieldValue();
    super.initState();
  }

  @override
  void didUpdateWidget(oldWidget) {
    if (fieldTextController.text != parseFieldValue()) {
      FocusManager.instance.primaryFocus?.unfocus();
      fieldTextController.text = parseFieldValue();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: TextField(
          controller: fieldTextController,
          keyboardType: widget.numeric ? TextInputType.number : null,
          maxLines: widget.maxLines,
          onChanged: (text) {
            final parsedText = widget.textParse(text);
            if (parsedText != null) {
              widget.formField.setDocValue(parsedText);
              callOnChange();
            }
          },
          onEditingComplete: () {
            FocusManager.instance.primaryFocus?.unfocus();
            fieldTextController.text = parseFieldValue();
            callOnChange();
          },
          decoration: InputDecoration(
            hintText: 'Search course ...',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
          ),
        ),
      );
}
