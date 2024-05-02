import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OptverifyView extends GetView {
  const OptverifyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OptverifyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OptverifyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
