import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adminsd46/screen/dasbordScreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class login_screen extends StatefulWidget{
  const login_screen({super.key});

  @override
  State<login_screen> createState(){
    return _LoginScreen();
  }
}

class _LoginScreen extends State<login_screen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  Future<void> _login() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your username and password')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    const url = 'http://127.0.0.1/project/apii/public/api/post'; // Replace with your server address
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );
    if (kDebugMode) {
      print(response.statusCode);
    }
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final token = responseBody['token'];
      final name = responseBody['nama'];
      final info = responseBody['info'];
      final email = responseBody['email'];
      final imgUrl = responseBody['imgUrl'];

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt', token);
      await prefs.setString('name', name);
      await prefs.setString('info', info);
      await prefs.setString('email', email);
      await prefs.setString('imgProfil', imgUrl);

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const DashboardScreen()),
        (route) => false,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password')),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffABC7C9),
      body : SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 120,
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      textAlign:TextAlign.center,
                      text: TextSpan(
                        text: 'Selamat datang\ndi',
                        style: GoogleFonts.manrope(
                          fontSize: 32,
                          color: const Color(0xFF101317),
                          fontWeight :FontWeight.w800,
                        ),
                        children: [
                          TextSpan(
                            text: 'SDN46',
                            style: TextStyle(
                              color: const Color(0xFF101317),
                              fontWeight: FontWeight.w800
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),
                  // Password TextField
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 8),
                  //forgot password
                  GestureDetector(
                    onTap: (){
                      if (kDebugMode) {
                        print('lupa password tapped');
                      }
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Lupa Password?',
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          color: const Color(0xFF9B59B6),
                        ),
                      ),
                    ),
                  ),
                    const SizedBox(height: 24),
                    _isLoading 
                    ? const CircularProgressIndicator()
                  // Login Button
                  : ElevatedButton(
                    onPressed:_login,
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50), // width and height
                      backgroundColor: const Color(0xFF12A3DA),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    child: Text(
                      'Masuk',
                      style: GoogleFonts.manrope(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ]
                ),
              )
            ],
          ),
        ) )
    );
  }
}