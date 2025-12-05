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
  bool get isEmpty => count == 0 ;
  bool get isFull => count == 20 ;

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
           Text(
              isFull ? 'LOTADO ' : 'PODE ENTRAR!',
            style:  TextStyle(fontSize: 30, color: isFull ? Colors.purple : Colors.black),
          ),
          const SizedBox(height: 32,),
          
          Text('$count', style:  TextStyle(fontSize: 100, color: isFull ? Colors.red : Colors.white)),
          const SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: isEmpty ? Colors.white.withValues(alpha: 0.2) : Colors.white,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: isEmpty ? null : decrement,
                child: Text(
                  'SAIU',
                  style: TextStyle(color:  Colors.black
                  , fontSize: 16),
                ),
              ),
              const SizedBox(width: 32,),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: isFull ? Colors.white.withValues(alpha: 0.2) : Colors.white,
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: isFull ? null : increment,
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
