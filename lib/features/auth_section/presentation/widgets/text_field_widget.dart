// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      required this.labelText,
      required this.textInputAction,
      required this.textInputType,
      this.textEditingController,
      this.validator,
      required this.autofillHints,
      this.isSecondaryStyle = false,
      this.isEnabled = true,
      this.icon,
      this.initialValue,
      this.onTap,
      this.readOnly = false,
      this.hintText,
      this.suffixIcon,
      this.onChanged,
      this.onEditingComplete,
      this.obscureText = false,
      this.enableSuggestions = false,
      this.iconsstar, this.iconsize,  this.iconscolors});

  final String labelText;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final Iterable<String> autofillHints;
  final bool isSecondaryStyle;
  final bool? isEnabled;
  final IconData? icon;
  final IconData? suffixIcon;
  final String? initialValue;
  final void Function()? onTap;
  final bool readOnly;
  final String? hintText;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final bool obscureText;
  final bool enableSuggestions;
  final IconData? iconsstar;
  final double? iconsize;
  final Color ?iconscolors;

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _obscureText = true;
  bool _hasTyped = false;
  bool _isValid = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _onChanged(String value) {
    setState(() {
      _hasTyped = value.isNotEmpty;
      _isValid = widget.validator?.call(value) == null;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextFormField(
        onTap: widget.onTap,
        onChanged: _onChanged,
        readOnly: widget.readOnly,
        initialValue: widget.initialValue,
        enableSuggestions: widget.enableSuggestions,
        enabled: widget.isEnabled,
        obscureText: _obscureText,
        validator: (value) {
          final result = widget.validator?.call(value);
          setState(() {
            _isValid = result == null;
          });
          return result;
        },
        onEditingComplete: widget.onEditingComplete,
        decoration: InputDecoration(
          icon: !widget.isSecondaryStyle || widget.icon == null
              ? null
              : Icon(
                  widget.icon,
                  size: 22,
                  color: widget.iconscolors 
                ),
          isDense: true,
          label: IntrinsicWidth(
            child: Row(
              children: [
                if (widget.iconsstar != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Icon(
                    widget.iconsstar,
                    color:  Colors.red,
                    size: widget.iconsize,
                  ),
                ),
                Text(
                  widget.labelText,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isValid ? Colors.black : Colors.red,
                  ),
                ),
              ],
            ),
          ),
          hintText: widget.hintText,
          suffixIcon: widget.obscureText && _hasTyped
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _togglePasswordVisibility,
                )
              : Icon(widget.suffixIcon),
          hintStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: widget.isSecondaryStyle
              ? FloatingLabelBehavior.always
              : FloatingLabelBehavior.always,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          border: widget.isSecondaryStyle
              ? const UnderlineInputBorder()
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
        ),
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        controller: widget.textEditingController,
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// ///TextField widget used as input methode to be used across application
// class TextFieldWidget extends StatefulWidget {
//   const TextFieldWidget({
//     super.key,
//     required this.labelText,
//     required this.textInputAction,
//     required this.textInputType,
//     this.textEditingController,
//     this.validator,
//     required this.autofillHints,
//     this.isSecondaryStyle = false,
//     this.isEnabled = true,
//     this.icon,
//     this.initialValue,
//     this.onTap,
//     this.readOnly = false,
//     this.hintText,
//     this.suffixIcon,
//     this.onChanged,
//     this.onEditingComplete,
//     this.obscureText = false,
//     this.enableSuggestions = false,
//   });

//   final String labelText;
//   final TextInputAction textInputAction;
//   final TextInputType textInputType;
//   final TextEditingController? textEditingController;
//   final String? Function(String?)? validator;
//   final Iterable<String> autofillHints;
//   final bool isSecondaryStyle;
//   final bool? isEnabled;
//   final IconData? icon;
//   final IconData? suffixIcon;
//   final String? initialValue;
//   final void Function()? onTap;
//   final bool readOnly;
//   final String? hintText;
//   final void Function(String)? onChanged;
//   final void Function()? onEditingComplete;
//   final bool obscureText;
//   final bool enableSuggestions;

//   @override
//   _TextFieldWidgetState createState() => _TextFieldWidgetState();
// }

// class _TextFieldWidgetState extends State<TextFieldWidget> {
//   bool _obscureText = true;
//   bool _hasTyped = false;

//   @override
//   void initState() {
//     super.initState();
//     _obscureText = widget.obscureText;
//   }

//   void _togglePasswordVisibility() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }

//   void _onChanged(String value) {
//     setState(() {
//       _hasTyped = value.isNotEmpty;
//     });

//     if (widget.onChanged != null) {
//       widget.onChanged!(value);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: TextFormField(
//         onTap: widget.onTap,
//         onChanged: _onChanged,
//         readOnly: widget.readOnly,
//         initialValue: widget.initialValue,
//         enableSuggestions: widget.enableSuggestions,
//         enabled: widget.isEnabled,
//         obscureText: _obscureText,
//         validator: widget.validator,
//         onEditingComplete: widget.onEditingComplete,
//         decoration: InputDecoration(
//           icon: !widget.isSecondaryStyle || widget.icon == null
//               ? null
//               : Icon(
//                   widget.icon,
//                   size: 22,
//                 ),
//           isDense: true,
//           label: Text(widget.labelText),
//           hintText: widget.hintText,
//           suffixIcon: widget.obscureText && _hasTyped
//               ? IconButton(
//                   icon: Icon(
//                     _obscureText ? Icons.visibility : Icons.visibility_off,
//                   ),
//                   onPressed: _togglePasswordVisibility,
//                 )
//               : Icon(widget.suffixIcon),
//           hintStyle: const TextStyle(fontSize: 14),
//           floatingLabelBehavior: widget.isSecondaryStyle
//               ? FloatingLabelBehavior.always
//               : FloatingLabelBehavior.always,
//           floatingLabelAlignment: FloatingLabelAlignment.start,
//           border: widget.isSecondaryStyle
//               ? const UnderlineInputBorder()
//               : OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//         ),
//         keyboardType: widget.textInputType,
//         textInputAction: widget.textInputAction,
//         controller: widget.textEditingController,
//       ),
//     );
//   }
// }