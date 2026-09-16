import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 35),

            Text(
              'tokopedia',
              style: TextStyle(
                fontSize: 27,
                color: Color.fromARGB(255, 70, 192, 78),
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Container(
              width: 350,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Masuk',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 22),

                  const Text(
                    'Nomor Ponsel atau Email',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                  const SizedBox(height: 7),

                  const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Kata Sandi',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                  const SizedBox(height: 7),

                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff00aa13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Selanjutnya',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'G     Google',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'f     Facebook',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
