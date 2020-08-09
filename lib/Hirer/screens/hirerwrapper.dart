import 'package:flutter/material.dart';
import 'package:hac_final/Hirer/models/user.dart';
import 'package:hac_final/Hirer/screens/authenticate/authenticate.dart';
import 'package:hac_final/Hirer/screens/home/home.dart';
// import 'package:hac/screens/authenticate/authenticate.dart';
// import 'package:hac/screens/home/home.dart';
import 'package:provider/provider.dart';

class HirerWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
