import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  String title = "";
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController urlImageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff29304B),
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
                    color: Colors.white,
                  ),
                ),
                Divider(),
                //estados textfiel: Enabled Focus, error disable
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Color(0xffEDA971),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(35),
                    // FilteringTextInputFormatter(
                    //   RegExp(r'[0-9]'),
                    //   allow: false,
                    // ),
                    // FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  //tipo de teclado
                  keyboardType: TextInputType.name,
                  //ocultar texto (generalmente para contraseñas)
                  obscureText: true,
                  controller: titleController,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: "Sugerencia de nombre de ttulo",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xff626B92),
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/type.svg",
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                        Colors.white54,
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
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xffEDA971),

                  controller: descriptionController,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: "Sugerencia de nombre de descripción",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xff626B92),
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/align-justify.svg",
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                        Colors.white54,
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
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xffEDA971),
                  // cursorHeight: 50,
                  // cursorRadius: Radius.circular(20),
                  // cursorWidth: 20,
                  controller: urlImageController,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: "Sugerencia de URL",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xff626B92),
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/image.svg",
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                        Colors.white54,
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
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Color(0xffEDA971),
                    ),
                    child: Text(
                      "Agregar",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 40,
                  thickness: 3,
                  color: Color(0xff626B92),
                ),
                Text(
                  "Listado General",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(5, 5),
                        blurRadius: 8,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff626B92).withOpacity(0.3),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          "https://images.pexels.com/photos/7801318/pexels-photo-7801318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          height: 200,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Lomo Saltado",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "El lomo saltado es un plato infaltable en nuestras mesas y se caracteriza por la sencillez de su preparación que requiere –además de los ingredientes básicos como la carne, la papa y el arroz– de una sartén (o wok) caliente para dar vida a unos de los sabores más representativos de la gastronomía nacional.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white60,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
