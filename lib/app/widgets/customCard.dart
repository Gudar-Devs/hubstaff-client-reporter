import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class CustomCard extends StatelessWidget {
  final Color? colorCard;
  final IconData? iconCard;
  final Color? iconColor;
  final Callback? ontap;
  final Widget? title;
  final Widget? subtitle;

  const CustomCard(
      {Key? key,
      this.colorCard,
      this.iconCard,
      this.iconColor,
      this.ontap,
      this.title,
      this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: ontap,
        child: Container(
            padding: const EdgeInsets.all(5),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: colorCard, borderRadius: BorderRadius.circular(5.r)),
                child: Icon(
                  iconCard,
                  size: 30,
                  color: iconColor,
                ),
              ),
              title: title,
              subtitle: subtitle,
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 1, 1, 1),
              ),
            )),
      ),
    );
  }
}
