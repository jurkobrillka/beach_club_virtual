import 'package:beach_club_virtual/core/entity/contact_info_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetail extends StatefulWidget {
  final ContactInfoItem item;


  ContactDetail(this.item);

  @override
  State<StatefulWidget> createState() => _ContactDetailState();
}

class _ContactDetailState extends State<ContactDetail>{

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.cyan.withOpacity(0.1),
          ),
          child: widget.item.icon,
        ),
        title: Text(widget.item.title),
        trailing: widget.item.endIcon
            ? Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.blueGrey.withOpacity(0.1)),
          child: const Icon(
            Icons.arrow_right,
            color: Colors.grey,
          ),
        )
            : null);
  }

}


