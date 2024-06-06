// import 'package:flutter/material.dart';

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title:
//             const Text("First Screen", style: TextStyle(color: Colors.white)),
//         actions: <Widget>[
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ))
//         ],
//         leading: IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.menu,
//               color: Colors.white,
//             )),
//       ),
//       body: Column(
//         children: <Widget>[
//           const Text(
//             "Sebuah Judul",
//             style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//           ),
//           const Text("Lorem ipsum dolor sit amet"),
//           ElevatedButton(onPressed: () {}, child: Text("Tombol")),
//           TextButton(onPressed: () {}, child: Text("Text Button")),
//           OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.volume_up),
//             tooltip: "Increase volume by 10",
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         shape:
//             ShapeBorder.lerp(const CircleBorder(), const StadiumBorder(), 0.5),
//         backgroundColor: Colors.blue,
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

//example image
// import 'package:flutter/material.dart';

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title:
//               const Text("First Screen", style: TextStyle(color: Colors.white)),
//           actions: <Widget>[
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.search,
//                   color: Colors.white,
//                 ))
//           ],
//           leading: IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.menu,
//                 color: Colors.white,
//               )),
//         ),
//         body: Center(
//           child: Semantics(
//             label: "Image of Android",
//             child: Image.asset(
//               "assets/images/android.png",
//               width: 200,
//               height: 300,
//             ),
//           ),
//         ));
//   }
// }

//example font custom
import 'package:dicoding_stepone/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen!';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:
            const Text("First Screen", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SecondScreen(
                  message: message,
                );
              },
            ));
          },
          child: const Text("Pindah Screen"),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});

//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   String _name = "";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("First Screen"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               decoration: const InputDecoration(
//                 hintText: "Write your name here",
//                 labelText: "Your Name",
//               ),
//               onChanged: (String value) {
//                 setState(() {
//                   _name = value;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(content: Text("Hello, $_name"));
//                     },
//                   );
//                 },
//                 child: const Text("Submit")),
//           ],
//         ),
//       ),
//     );
//   }
// }

// example textfield with controller

// class _FirstScreenState extends State<FirstScreen> {
//   TextEditingController _nameController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("First Screen"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: const InputDecoration(
//                 hintText: "Write your name here",
//                 labelText: "Your Name",
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                           content: Text("Hello, ${_nameController.text}"));
//                     },
//                   );
//                 },
//                 child: const Text("Submit")),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }
// }

// example switch

// class _FirstScreenState extends State<FirstScreen> {
//   bool lightOn = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("First Screen"),
//       ),
//       body: Switch(
//           value: lightOn,
//           onChanged: (bool value) {
//             setState(() {
//               lightOn = value;
//             });
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(lightOn ? "Light On" : "Light Off"),
//                 duration: const Duration(seconds: 1),
//               ),
//             );
//           }),
//     );
//   }
// }

// example radio

// class _FirstScreenState extends State<FirstScreen> {
//   String? language;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("First Screen"),
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ListTile(
//             leading: Radio<String>(
//               value: "Dart",
//               groupValue: language,
//               onChanged: (value) {
//                 setState(() {
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: const Text("Dart"),
//           ),
//           ListTile(
//             leading: Radio<String>(
//               value: "Kotlin",
//               groupValue: language,
//               onChanged: (value) {
//                 setState(() {
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: const Text("Kotlin"),
//           ),
//           ListTile(
//             leading: Radio<String>(
//               value: "Swift",
//               groupValue: language,
//               onChanged: (value) {
//                 setState(() {
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: const Text("Swift"),
//           ),
//         ],
//       ),
//     );
//   }

//   void showSnackbar() {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('$language selected'),
//         duration: Duration(seconds: 1),
//       ),
//     );
//   }
// }

// example checkbox
// class _FirstScreenState extends State<FirstScreen> {
//   bool agree = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("First Screen"),
//       ),
//       body: ListTile(
//         leading: Checkbox(
//           activeColor: Colors.blue,
//           value: agree,
//           onChanged: (bool? value) {
//             setState(() {
//               agree = value!;
//             });
//           },
//         ),
//         title: const Text("Agree / Disagree"),
//       ),
//     );
//   }
// }
