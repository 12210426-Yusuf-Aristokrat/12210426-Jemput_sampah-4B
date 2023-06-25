// 
import 'package:flutter/material.dart';

class UserDAta extends StatelessWidget {
  const UserDAta({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class User {
  String name;
  String email;

  User({required this.name, required this.email});
}

class UserDataWidget extends StatefulWidget {
  @override
  _UserDataWidgetState createState() => _UserDataWidgetState();
}

class _UserDataWidgetState extends State<UserDataWidget> {
  User user = User(name: "Yusuf Aristokrat", email: "yusuf123@example.com");
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = user.name;
    emailController.text = user.email;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void updateUser() {
    setState(() {
      user.name = nameController.text;
      user.email = emailController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: nameController,
          decoration: InputDecoration(labelText: "Name"),
        ),
        TextField(
          controller: emailController,
          decoration: InputDecoration(labelText: "Email"),
        ),
        ElevatedButton(
          onPressed: updateUser,
          child: Text("Update"),
        ),
        Text("Name: ${user.name}"),
        Text("Email: ${user.email}"),
      ],
    );
  }
}
