import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipesappg7/model/recipe_model.dart';
import 'package:recipesappg7/widgets/recipe_item.dart';
import 'package:recipesappg7/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController urlImageController = TextEditingController();

  List<Map<String, dynamic>> recipes = [
    {
      "title": "Wafles",
      "description":
          "Primero agregamos la leche, huevos, azúcar, sal y esencia de vainilla en nuestra licuadora y mezclamos bien durante 2 minutos.Luego con un colador tamizamos la harina y el polvo de hornear. Luego los incluimos en la mezcla anterior y mezclamos hasta formar una pasta lisa y uniforme.",
      "urlImage":
          "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
  ];

  List<RecipeModel> recipesModelList = [
    RecipeModel(
        title: "Wafles",
        description:
            "Primero agregamos la leche, huevos, azúcar, sal y esencia de vainilla en nuestra licuadora y mezclamos bien durante 2 minutos.Luego con un colador tamizamos la harina y el polvo de hornear. Luego los incluimos en la mezcla anterior y mezclamos hasta formar una pasta lisa y uniforme",
        urlImage:
            "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff29304B),
        body: Padding(
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
              formulario(titleController, "Ingresa el título", "type"),
              formulario(descriptionController, "Ingresa la descripción",
                  "align-justify"),
              formulario(
                  urlImageController, "Ingresa la url de la imagen", "image"),

              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    // Map<String, dynamic> auxRecipe = {
                    //   "title": titleController.text,
                    //   "description": descriptionController.text,
                    //   "urlImage": urlImageController.text,
                    // };
                    // recipes.add(auxRecipe);
                    // setState(() {});
                    // titleController.clear();
                    // descriptionController.clear();
                    // urlImageController.clear();
                    recipesModelList.add(RecipeModel(
                        title: titleController.text,
                        description: descriptionController.text,
                        urlImage: urlImageController.text));
                    setState(() {});
                    titleController.clear();
                    descriptionController.clear();
                    urlImageController.clear();
                  },
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
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: recipesModelList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      // return Text(
                      //   "asdasd",
                      //   style: TextStyle(color: Colors.white),
                      // );
                      return RecipeItem(
                        urlImage: recipesModelList[index].urlImage,
                        description: recipesModelList[index].description,
                        title: recipesModelList[index].title,
                      );
                    },
                  ),
                ),
              ),
              // ...List.generate(
              //   recipesModelList.length,
              //   (index) => RecipeItem(
              //     urlImage: recipesModelList[index].urlImage,
              //     description: recipesModelList[index].description,
              //     title: recipesModelList[index].title,
              //   ),
              // ),

              // ...recipes
              //     .map((e) => RecipeItem(
              //           urlImage: e["urlImage"],
              //           description: e["description"],
              //           title: e["title"],
              //         ))
              //     .toList()
            ],
          ),
        ),
      ),
    );
  }
}
