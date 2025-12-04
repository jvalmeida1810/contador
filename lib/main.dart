import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void decrement() {
    
    setState(() {
      count--;  
    });
    
    print(count);
  }

  void increment() {
    setState(() {
      count++;  
    });
    
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/image/image.jpg'),
          fit: BoxFit.cover,

          ),
        ), 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'PODE ENTRAR!',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          const SizedBox(height: 32,),
          
          Text('$count', style: const TextStyle(fontSize: 100, color: Colors.white)),
          const SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: decrement,
                child: Text(
                  'SAIU',
                  style: TextStyle(color: Colors.black
                  , fontSize: 16),
                ),
              ),
              const SizedBox(width: 32,),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: increment,
                child: Text(
                  'ENTROU',
                  style: TextStyle(color: Colors.black
                  , fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
