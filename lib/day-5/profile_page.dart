import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  final String name;
  final Function(String)? onSave;

  const ProfilePage({
    super.key,
    required this.name,
    this.onSave,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
    widget.onSave?.call(controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Text(
            'Profile Page, ${widget.name}',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          TextField(
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
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: save,
            child: Text('Save'),
          )
        ],
      ),
    );
  }
}