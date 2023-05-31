import 'package:flutter/material.dart';
import 'package:note_app/core/constants.dart';

class AddNoteButtomSheetBody extends StatelessWidget {
  const AddNoteButtomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 24),
      child: Column(
        children: [
          const AppTextFormField(),
          const SizedBox(height: 30),
          TextFormField(
            style: const TextStyle(color: Colors.white, fontSize: 20),
            cursorHeight: 30,
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 5,
            maxLength: 200,
            cursorColor: Theme.of(context).focusColor,
            decoration: const InputDecoration(
              hintText: 'Type Somthing...',
              hintStyle: TextStyle(
                color: kGreyColor,
                fontSize: 20,
              ),
              border: OutlineInputBorder(borderSide: BorderSide.none),
              counterStyle: TextStyle(color: kGreyColor),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Add'))
        ],
      ),
    );
  }
}

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // style: TextStyle(
      //     color: Colors.white, fontSize: 24.sp, fontWeight: FontWeight.w500),
      maxLength: 30,
      cursorColor: kSecondaryColor,
      decoration: InputDecoration(
        labelText: 'Title',
        labelStyle: const TextStyle(color: kGreyColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(borderColor: kSecondaryColor),
        counterStyle: const TextStyle(
          color: kGreyColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: borderColor ?? Colors.white,
      ),
    );
  }
}
