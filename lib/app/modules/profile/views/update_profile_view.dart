import 'package:flutter/material.dart';

import 'package:get/get.dart';

class UpdateProfileView extends GetView {
  const UpdateProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UpdateProfileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UpdateProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
