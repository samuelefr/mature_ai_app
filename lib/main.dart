import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark, // Imposta tutto il tema su scuro
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Definiamo i colori del tuo brand
  final Color backgroundDark = const Color(0xFF1E2125); // Grigio scurissimo
  final Color cardDark = const Color(0xFF2C3036);       // Grigio per la card
  final Color accentOrange = const Color(0xFFF9A825);   // Arancione del tasto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDark,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60.0),
          child: Column(
            children: [
              // 1. LOGO E TITOLO
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/hat.png',
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "MATURE-AI",
                    style: GoogleFonts.inter(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: accentOrange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // 2. TESTO DESCRITTIVO
              Text(
                "Inserisci gli argomenti da studiare e\nlascia che l'intelligenza artificiale ti aiuti\nnella preparazione",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.grey[400],
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 50),

              // 3. LA CARD DI INPUT
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: cardDark,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Inserisci gli argomenti",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Scrivi ogni argomento su una nuova riga:",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 15),
                    
                    // IL CAMPO DI TESTO (TEXTAREA)
                    TextField(
                      maxLines: 6,
                      decoration: InputDecoration(
                        hintText: "Es:\nLa Prima Guerra Mondiale\nI Promessi Sposi...",
                        hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
                        filled: true,
                        fillColor: backgroundDark.withOpacity(0.5),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: accentOrange.withOpacity(0.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: accentOrange, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),

                    // IL BOTTONE ARANCIONE
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: accentOrange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Genera Materiale di Studio",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}