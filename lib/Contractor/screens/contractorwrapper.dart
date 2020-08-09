import 'package:flutter/material.dart';

import 'package:hac_final/Contractor/models/user.dart';
import 'package:hac_final/Contractor/screens/authenticate/authenticate.dart';
import 'package:hac_final/Contractor/screens/home/home.dart';
import 'package:provider/provider.dart';

class ContractorWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
