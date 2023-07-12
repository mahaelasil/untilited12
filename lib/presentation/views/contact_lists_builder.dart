
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../style/colors.dart';

import '../widgets/defult_lists_sperator.dart';
import '../widgets/defult_text.dart';

import 'contacts_list_item.dart';


class ContactsListsBuilder extends StatelessWidget {
  final List<Map> contacts;
  final String noContactsText;
  final String contactType;

  const ContactsListsBuilder(
      {Key? key,
        required this.contacts,
        required this.noContactsText,
        required this.contactType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: contacts.isNotEmpty,
      replacement: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.no_accounts,
              size: 75.sp,
              color: white,
            ),
            DefaultText(
              text: noContactsText,
              textSize: 14.sp,
              weight: FontWeight.bold,
              textColor: white,
            ),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: ListView.separated(
          itemBuilder: (context, index) =>
              ContactsListItem(contactModel: contacts[index]),
          separatorBuilder: (context, index) => const DefaultListsSeparator(),
          itemCount: contacts.length,
        ),
      ),
    );
  }
}