import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SetnewPasswordView extends GetView {
  const SetnewPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SetnewPasswordView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SetnewPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
