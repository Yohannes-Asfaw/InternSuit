<<<<<<< HEAD

=======
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';
import 'package:mynotes/auth/login/login_bloc.dart';
import 'package:mynotes/auth/login/login_state.dart';
import 'package:mynotes/post/blocs/post_bloc.dart';
import 'package:mynotes/storage/localstorage.dart';
import 'package:mynotes/views/company_profile.dart';
import 'package:mynotes/views/login.dart';
import 'package:mynotes/views/user_profile.dart';
import 'package:mynotes/views/user_registration.dart';

import '../application/blocs/app_bloc.dart';
import '../application/blocs/app_event.dart';
import '../auth/auth_repository.dart';
import '../auth/login/data_provide/dataprovider.dart';
import '../auth/login/login_event.dart';
import '../company/blocs/company_bloc.dart';
import '../company/blocs/company_event.dart';
import '../post/blocs/post_event.dart';
import 'company_registration.dart';

<<<<<<< HEAD


=======
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
// void main() {
//   runApp(
//     const LoginView(),
//   );
// }

class CompanyLoginView extends StatelessWidget {
  const CompanyLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          toolbarHeight: 50,
          backgroundColor: Colors.teal,
          elevation: 10,
        ),
        body: const CompanyLoginviewstatefull());
  }
}

class CompanyLoginviewstatefull extends StatefulWidget {
  const CompanyLoginviewstatefull({Key? key}) : super(key: key);

  @override
<<<<<<< HEAD
  State<CompanyLoginviewstatefull> createState() => _CompanyLoginviewstatefullState();
}

class _CompanyLoginviewstatefullState extends State<CompanyLoginviewstatefull> {

  late final TextEditingController _companyName;
  late final TextEditingController _companPassword;

  

=======
  State<CompanyLoginviewstatefull> createState() =>
      _CompanyLoginviewstatefullState();
}

class _CompanyLoginviewstatefullState extends State<CompanyLoginviewstatefull> {
  late final TextEditingController _companyName;
  late final TextEditingController _companPassword;

>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
  final _formKey = GlobalKey<FormState>();
  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);

    return regExp.hasMatch(em);
  }
<<<<<<< HEAD
  getcompanyname() async {
    var companyname = await TokenStorage.getCompany();
    
    return companyname;}
=======

  getcompanyname() async {
    var companyname = await TokenStorage.getCompany();

    return companyname;
  }
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7

  @override
  void initState() {
    _companyName = TextEditingController();
    _companPassword = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
<<<<<<< HEAD

=======
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
    _companPassword.dispose();
    _companyName.dispose();
    super.dispose();
  }

  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    // final provid = Loginprovider();
    // final authRepo = AuthenticationRepository(provid);
    // final loginBloc = LoginBloc(authrepo:authRepo);
    // return RepositoryProvider<AuthenticationRepository>(
    //          create: (context) => authRepo,

<<<<<<< HEAD
      
=======
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
<<<<<<< HEAD
          
            padding: const EdgeInsets.fromLTRB(40, 0, 50, 40),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
=======
            padding: const EdgeInsets.fromLTRB(40, 0, 50, 40),
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.teal
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                // image: DecorationImage(
                //   image: AssetImage('assets/images/phone_5.jpg'),
                //   fit: BoxFit.cover,
                // ),
<<<<<<< HEAD
                color: Colors.white
                ),
           
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    BlocConsumer<LoginBloc, LoginState>(
                       listener: ((context, state) {
                        if (state is CompanyLoginFilure){
                         AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.ERROR,
                                    animType: AnimType.TOPSLIDE,
                                    title: 'ERROR',
                                    desc: 'invalid companyname or password',
                                    btnOkOnPress: () {},
                                  ).show();}
                         if (state is CompanyLoginSuccess){
                                 BlocProvider.of<PostBloc>(context).add(FetchByCompanyname(state.company.id));
                                BlocProvider.of<AppBloc>(context).add(FetchBycompanyName(state.company.id));
                                BlocProvider.of<CompanyBloc>(context).add(FetchBycompanyname(state.company.id));


                        context.go('/CompanyNavigation');
                        }
                      }),

                       builder: (context, state) {
                      
                         return Form(
                           key: _formKey,
                             child: SingleChildScrollView(
                             child: Column(
                            children: <Widget>[
                       Container(
                          margin: const EdgeInsets.only(bottom: 20, top: 20),
                          decoration:  BoxDecoration(
                              color: Colors.lightBlue[200],
                              borderRadius:const BorderRadius.only(
                                bottomLeft: Radius.circular(100),
                                topLeft: Radius.circular(100),
                                topRight: Radius.circular(100),
                                    
=======
                ),
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              BlocConsumer<LoginBloc, LoginState>(listener: ((context, state) {
                if (state is LoginFilure) {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.ERROR,
                    animType: AnimType.TOPSLIDE,
                    title: 'ERROR',
                    desc: 'invalid companyname or password',
                    btnOkOnPress: () {},
                  ).show();
                }
                if (state is CompanyLoginSuccess) {
                  BlocProvider.of<PostBloc>(context)
                      .add(FetchByCompanyname(state.company.id));
                  BlocProvider.of<AppBloc>(context)
                      .add(FetchBycompanyName(state.company.id));
                  BlocProvider.of<CompanyBloc>(context)
                      .add(FetchBycompanyname(state.company.id));

                  context.go('/CompanyNavigation');
                }
              }), builder: (context, state) {
                return Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                        child: Column(children: <Widget>[
                      Container(
                          margin: const EdgeInsets.only(bottom: 20, top: 20),
                          decoration: const BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100),
                                topLeft: Radius.circular(100),
                                topRight: Radius.circular(100),

>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                                // bottomRight: Radius.circular(50))),
                              )),
                          height: 130,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            "Intern Suit",
                            style: TextStyle(
                                fontSize: 60,
                                fontFamily: 'DancingScript',
<<<<<<< HEAD
                                ),
                          )),
  
                   
=======
                                color: Colors.white),
                          )),
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: const Text(
                            'Sign in',
<<<<<<< HEAD
                            style: TextStyle(fontSize: 20,),
                          )),
                   
=======
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          controller: _companyName,
<<<<<<< HEAD
                          style: const TextStyle(),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            
                            enabledBorder:OutlineInputBorder(
                              borderSide: BorderSide(),
                              
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                            labelText: 'Company Name',
                            labelStyle: TextStyle(),
=======
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            labelText: 'Company Name',
                            labelStyle: TextStyle(color: Colors.white),
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                            errorBorder: OutlineInputBorder(
<<<<<<< HEAD
                                borderSide: BorderSide(),
                              ),
                              focusedErrorBorder:  OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
=======
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Company Name is required';
                            }
<<<<<<< HEAD
                
                            return null;
                          },
                        ),
                      ),   Container(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            style: const TextStyle(),
=======

                            return null;
                          },
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                            controller: _companPassword,
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
<<<<<<< HEAD
                                borderSide: BorderSide(),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                              // border: OutlineInputBorder(),
                              labelText: 'Password',
                              labelStyle: const TextStyle(),
=======
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              // border: OutlineInputBorder(),
                              labelText: 'Password',
                              labelStyle: const TextStyle(color: Colors.white),
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                              ),
                              errorBorder: const OutlineInputBorder(
<<<<<<< HEAD
                                borderSide: BorderSide(),
                              ),
                              focusedErrorBorder:const  OutlineInputBorder(
                              ), 
                              prefixIcon: const Icon(
                                Icons.lock,
                              ),
                              suffixIcon: IconButton(
                                  color: _showPassword
                                      ? Colors.black
=======
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedErrorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              suffixIcon: IconButton(
                                  color: _showPassword
                                      ? Colors.white
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                                      : Colors.grey,
                                  icon: Icon(
                                    !_showPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(
                                        () => _showPassword = !_showPassword);
                                  }),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password is required';
                              } else if (value.trim().length < 4) {
                                return 'password length is short';
                              }
                              return null;
                            },
                          )),
<<<<<<< HEAD
                   
                      Align(
                         alignment: Alignment.centerRight,
                              child: Container(
                                  height: 40,
                                  width: 120,
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                            width: 1,),
                                        // shape: const RoundedRectangleBorder(
                                        //     borderRadius: BorderRadius.all(
                                        //         Radius.circular(15))),
                                      ),
                                      child: const Text(
                                        'sign in',
                                        style: TextStyle(
                                           fontSize: 20),
                                      ),
                            onPressed: () async {
                              final password = _companPassword.text;
                              final companyname =_companyName.text;
                              print("error");
                              if (_formKey.currentState!.validate()) {

                                 BlocProvider.of<LoginBloc>(context).add(CompanyAttemptLogin(companyname,password));
                                  
      
                                 
                                
                              }
                              
                            },
                          ))),
                           Row(
                        children: <Widget>[
                          const Text(
                            'Does not have account?',
                            style: TextStyle(color: Colors.lightBlue),
=======
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 40,
                              width: 120,
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1, color: Colors.white),
                                  // shape: const RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.all(
                                  //         Radius.circular(15))),
                                ),
                                child: const Text(
                                  'sign in',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () async {
                                  final password = _companPassword.text;
                                  final companyname = _companyName.text;
                                  if (_formKey.currentState!.validate()) {
                                    BlocProvider.of<LoginBloc>(context).add(
                                        CompanyAttemptLogin(
                                            companyname, password));
                                  }
                                },
                              ))),
                      Row(
                        children: <Widget>[
                          const Text(
                            'Does not have account?',
                            style: TextStyle(color: Colors.yellow),
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                          ),
                          TextButton(
                            child: const Text(
                              'Sign Up',
<<<<<<< HEAD
                              style: TextStyle(fontSize: 20, ),
                            ),
                            onPressed: () {
                             
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CompanySignupView(),));
=======
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            onPressed: () {
                              context.go('/CompanySignupView');
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
<<<<<<< HEAD

                         Container(
=======
                      Container(
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                          height: 50,
                          padding: const EdgeInsets.fromLTRB(65, 0, 65, 0),
                          margin: const EdgeInsets.only(top: 10, bottom: 20),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
<<<<<<< HEAD
                              side:
                                  const BorderSide(width: 1, ),
=======
                              side: const BorderSide(
                                  width: 1, color: Colors.white),
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
                              // shape: const RoundedRectangleBorder(
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(25))),
                            ),
                            child: const Text(
                              'Signin As User',
<<<<<<< HEAD
                              style: TextStyle( fontSize: 20),
                            ),
                            onPressed: () {
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));

                            },
                          )),








       
               
                            ])));
                       }  )])))  

);}}
=======
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              context.go('/Login');
                            },
                          )),
                    ])));
              })
            ]))));
  }
}
>>>>>>> 0078f81cf636bfa6dfad38e8fdd4cc87560030c7
