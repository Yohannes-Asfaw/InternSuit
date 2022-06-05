import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mynotes/models/users.dart';
import 'package:mynotes/repository/user_repo.dart';
import 'package:mynotes/user/blocs/user_bloc.dart';
import 'package:mynotes/user/blocs/user_event.dart';
import 'package:mynotes/user/blocs/user_state.dart';
import 'package:mynotes/user/data_provider/user_data_provider.dart';
import 'package:mynotes/user/repository/user_repository.dart';

import '../storage/localstorage.dart';



class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late final TextEditingController _username = TextEditingController();
  late final TextEditingController _full_name = TextEditingController();
  late final TextEditingController _address = TextEditingController();
  late final TextEditingController _department = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {

      return Scaffold(
            appBar: AppBar(
              title: const Text("Profile"),
              toolbarHeight: 30,
              backgroundColor: Colors.teal,
              elevation: 10,
            ),
            body:  BlocBuilder<UserBloc, UserState>(
                     builder: (context, state) {
                      if (state is UserOperationSuccess){
                        _username.text = state.user!.userName;
                        _full_name.text = state.user!.fullName;
                        _address.text = state.user!.address;
                        _department.text = state.user!.department;
            return Container(
 padding: const EdgeInsets.all(10),                width: double.infinity,
                decoration: const BoxDecoration(),
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/images/phone_10.jpg'),
                //     fit: BoxFit.cover,
                //   ),
                // ),Bloc
                child: SingleChildScrollView(
                  child: Column(children: [
                 
                       Form( 
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                            children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 15.0, right: 15.0, top: 17.0,bottom: 30),
                                  height: 80,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage('assets/images/phone_10.jpg'))),
                                  child: const Padding(padding: EdgeInsets.all(10.0)),
                                ),
                   
      





                                 Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                        

                                    
                              ElevatedButton(
  onPressed: ()async {
      await TokenStorage.delettoken();

     context.go('/');
  },
  
  child: Text('logout'),
),
                          ElevatedButton(
  onPressed: () {
     
 BlocProvider.of<UserBloc>(context).add(UserDelete(state.user!.id));
                                    context.go('/');


  },
  
  child: Text('delete'),
),
                                    ],),












                                 Text(
                                  '${state.user!.userName}',
                                  style:const TextStyle(
                                      fontSize: 25, fontStyle: FontStyle.italic),
                                ),
                                
                                      Container(
                                          padding: const EdgeInsets.all(10),
                                          child: TextFormField(
                                            controller: _username,
                                            style: const TextStyle(color: Colors.black),
                                            decoration: const InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              labelText: 'User Name',
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic),
                                              prefixIcon: Icon(
                                                Icons.business,
                                                color: Colors.black,
                                              ),
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
                                      Container(
                                          padding: const EdgeInsets.all(10),
                                          child: TextFormField(
                                            controller: _full_name,
                                            style: const TextStyle(color: Colors.black),
                                            decoration: const InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              labelText: 'Full name',
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic),
                                              prefixIcon: Icon(
                                                Icons.business,
                                                color: Colors.black,
                                              ),
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
                                      Container(
                                          padding: const EdgeInsets.all(10),
                                          child: TextFormField(
                                            controller: _address,
                                            style: const TextStyle(color: Colors.black),
                                            decoration: const InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              labelText: 'User Address',
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic),
                                              prefixIcon: Icon(
                                                Icons.business,
                                                color: Colors.black,
                                              ),
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
                                      Container(
                                          padding: const EdgeInsets.all(10),
                                          child: TextFormField(
                                            controller: _department,
                                            style: const TextStyle(color: Colors.black),
                                            decoration: const InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              labelText: 'department',
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic),
                                              prefixIcon: Icon(
                                                Icons.business,
                                                color: Colors.black,
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'department is required';
                                              } else if (value.trim().length < 4) {
                                                return 'department length is short';
                                              }
                                              return null;
                                            },
                                          )),
                                   

       ElevatedButton(
                                 onPressed: () {
                                                final address = _address.text;
                                       final fullName = _full_name.text;
                                       final department = _department.text;
                                       final username = _username.text;
                                     if (_formKey.currentState!.validate()){
                                     
                                       BlocProvider.of<UserBloc>(context).add(UserUpdate(state.user!.id, 
                                       User( address: address, department: department, fullName: fullName, userName: username)
                                       ));
                                     
                                     }
      // Respond to button press
                                              },
  
                                     child: Text('Edit data'),
                                          ),



         
                                    
                              ])))
                  ]
                   )
                  ));
  }
     
       return Center(child: CircularProgressIndicator());}
  ));
      
  }
}
