
import 'package:flutter/material.dart';
import 'package:text_input/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
        TextField(
              //TextField takes decoration which takes InputDecoration
              decoration: InputDecoration(
                // this is shown when nothing is written in text field
                hintText: "Enter your name",
                // this is the label of text which tells what the text field is about 
                labelText: "Name",
                //we can customize the labelText and hintText for that we can use labelStyle or the hintStyle - here we are using hintStyle 
                // hintStyle: TextStyle(
                //   fontSize: 15,
                //   color: Colors.black,
                // ),

                  /*Using icons in the text file */
                // icon: Icon(Icons.security), // only using icon will keep the icon outside of the text field 


                  //using prefix icon will place icon inside the text field
                // prefixIcon: Icon(Icons.security), 

                // suffixIcon: Icon(Icons.search), //Suffix icon will place the icon on the right side of the text field

                // this way we can decide the look of the text field 
                // border: OutlineInputBorder(),
                // border: UnderlineInputBorder(), 
                border: InputBorder.none, // This remove all kinds of border from the text field  - on using this kind of border style we might need to change the fill color 
                // fillColor: Colors.green, 
                // filled: true, 
                
              ),
              //For a specific type of input we allocate the keyboard type - name, number, email and all others
              // keyboardType: TextInputType.number, 
              // for a secret data like password we can use obscureText 
              // obscureText: true, 
              // To limit the number of letters that can be inserted use maxLength 
              maxLength: 10,
              // to limit the number of lines that can be inserted use maxLines 
              // maxLines: 2, 
            ),
            
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
            labelText: "Password",
            border: OutlineInputBorder(),
          
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                _secureText = !_secureText;
              });
            },
            icon: Icon(_secureText ? Icons.remove_red_eye: Icons.remove_red_eye_outlined),
            ),

            ),

            obscureText: _secureText,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
    
  }
}