import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {

  final String name;

  const SettingPage({
    super.key,
    required this.name,
    });

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  final controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.name;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void save() {
    Navigator.pop(context, controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: save,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Name',
            hintText: widget.name,
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                controller.clear();
              },
            ),
          ),
        ),
      ),
    );
  }
}