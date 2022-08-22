import 'package:flutter/material.dart';
// import 'package:multi_validator/multi_validator.dart';
import 'package:form_field_validator/form_field_validator.dart';
class EnterPhone extends StatefulWidget {
  EnterPhone();

  @override
  State<EnterPhone> createState() => _EnterPhoneState();
}

class _EnterPhoneState extends State<EnterPhone> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    TextEditingController namecon = TextEditingController();
    TextEditingController emailcon = TextEditingController();
    TextEditingController passcon = TextEditingController();
    String pass = "";
    bool password = false;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container(
              height: 0.278325 * screenHeight,
              width: screenWidth,
              margin: EdgeInsets.only(top: 0, right: 0, left: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                color: Color.fromRGBO(123, 207, 233, 1),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.0738916,
                      width: screenWidth,
                      // margin: EdgeInsets.only(top: screenHeight*0.033),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: screenWidth * 0.07),
                          alignment: Alignment.centerRight,
                          width: screenWidth / 3,
                          child: Text(
                            "SIGN UP",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(
                        top: screenHeight * 0.0455566,
                        // right: screenWidth * 0.8533,
                        // left: 0.0777 * screenWidth
                        left: screenWidth * 0.08
                    ),
                    child: Text(
                      "Sign in",
                      textAlign:  TextAlign.center,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenHeight * 0.0123152,
                      // right: 0.085333 * screenWidth,
                      left: 0.0777 * screenWidth),
                  child: Text(
                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Integer maximus accumsan erat id facilisis.",
                    style: TextStyle(fontSize: screenWidth*0.035, color: Colors.white,letterSpacing: 2),
                    textAlign: TextAlign.left,
                  ),
                )
              ]),
            ),
            Container(
              width: screenWidth,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required*"),
                    PatternValidator(
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))'
                        r'@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
                        r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
                        errorText: "Enter Valid Email"),
                  ]),
                  autovalidateMode: (AutovalidateMode.always),
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.words,
                  // textInputAction: TextInputAction.emergencyCall,
                  controller: emailcon,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: Colors.purpleAccent)),
                      hintText: "Email",
                      errorStyle: TextStyle(color: Color(0xffff0000))),
                ),
              ),
            ),
            Container(
              width: screenWidth,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  onChanged: (value) {
                    pass = value;
                    print(pass);
                  },
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required*"),
                    PatternValidator(
                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
                        errorText: "Enter Valid Password"),
                    MinLengthValidator(8,
                        errorText:
                        'password must be at least 8 digits long'),
                  ]),
                  controller: passcon,
                  obscureText: !password,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              password = !password;
                            });
                          },
                          icon: Icon(password
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: Colors.purpleAccent)),
                      hintText: "Password",
                      errorStyle: TextStyle(color: Color(0xffff0000))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
