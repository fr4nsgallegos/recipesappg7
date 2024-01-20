import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  String? _titleErrorText;

  void _validateTitle(String? value) {
    if (value == null) {
      _titleErrorText = "El titulo no debe estar vacio";
      setState(() {});
    } else if (isValidTitle(value) == false) {
      _titleErrorText = "Se excedio el tamaño del valor";
      setState(() {});
    } else {
      _titleErrorText = null;
      setState(() {});
    }
  }

  bool isValidTitle(String title) {
    //si encuentra coincidencia devuelve TRUE
    //caso contrario FALSE
    //OJO: La expresion regular ^.{1,30}$ evalua si la cadena tiene de 1 a 30 caracteres
    return RegExp(r'^.{1,2}$').hasMatch(title);
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print("Se subió correctamente");
      print(_titleController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                validator: (value) {
                  return _titleErrorText;
                },
                onChanged: (value) => _validateTitle(value),
                style: TextStyle(
                  color: Colors.white,
                ),
                cursorColor: Color(0xffEDA971),
                //tipo de teclado
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
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    _submitForm();
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
            ],
          ),
        ),
      ),
    );
  }
}
