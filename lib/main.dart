import 'package:flutter/material.dart';
import 'soruuyg.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

// 🔹 Giriş Ekranı (Şık Tasarım)
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.deepOrange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.lock_outline, size: 80, color: Colors.redAccent),
                    SizedBox(height: 20),
                    Text("Giriş Yap", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "E-Posta",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: passwordController,
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: "Şifre",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => SoruEkrani()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                        ),
                        child: Text("Giriş Yap", style: TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 🔹 Test Ekranı (Gelişmiş Tasarım)
class SoruEkrani extends StatefulWidget {
  @override
  State<SoruEkrani> createState() => _SoruEkraniState();
}

class _SoruEkraniState extends State<SoruEkrani> {
  int soruIndex = 1; // Kaçıncı soruda olduğunu göstermek için

  void cevabiKontrolEt(String secilenCevap) {
    setState(() {
      BenimTestim.cevabi_kontrol_et(secilenCevap);
      soruIndex++; // Soru ilerledikçe artacak
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Ekranı", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.deepOrange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Soru $soruIndex",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    BenimTestim.soru_metnini_yaz(),
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: ["A", "B", "C", "D"].map((cevap) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => cevabiKontrolEt(cevap),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                    ),
                    child: Text(
                      cevap == "A"
                          ? BenimTestim.a_sikki_yaz()
                          : cevap == "B"
                          ? BenimTestim.b_sikki_yaz()
                          : cevap == "C"
                          ? BenimTestim.c_sikki_yaz()
                          : BenimTestim.d_sikki_yaz(),
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 30),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Sonuç: ${BenimTestim.d_y_bilgisi.length} Doğru / ${soruIndex - 1} Yanlış",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
