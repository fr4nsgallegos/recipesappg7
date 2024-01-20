import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  String title = "";
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mis recetas",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(),
                //estados textfiel: Enabled Focus, error disable
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: "Sugerencia de nombre de ttulo",
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/type.svg",
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                        Colors.black45,
                        BlendMode.srcIn,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,

                      // borderSide: BorderSide(
                      //   color: Colors.black26,
                      //   width: 1,
                      // ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                        // borderSide: BorderSide(
                        //   color: Colors.black26,
                        //   width: 1.5,
                        // ),
                        ),
                  ),
                  // onChanged: (String value) {
                  //   print(value);
                  //   title = value;
                  //   print("title: $title");
                  // },
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: "Sugerencia de nombre de descripción",
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/align-justify.svg",
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                        Colors.black45,
                        BlendMode.srcIn,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,

                      // borderSide: BorderSide(
                      //   color: Colors.black26,
                      //   width: 1,
                      // ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                        // borderSide: BorderSide(
                        //   color: Colors.black26,
                        //   width: 1.5,
                        // ),
                        ),
                  ),
                  // onChanged: (String value) {
                  //   print(value);
                  //   title = value;
                  //   print("title: $title");
                  // },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
