import 'package:assignment_2/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Profile",
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {

    final List<String> imageUrls = [
      'assets/images/keluarga.jpg',
      'assets/images/gerex.JPG',
      'assets/images/itstv.JPG',
      'assets/images/ilits25.JPG',
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'muhammadru',
              style: bold16,
            ),
            const SizedBox(width: 4),
            const Icon(Icons.verified, color: Colors.blue, size: 14),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section Profile
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), 
                    ),
                  ],
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Profil dan statistik
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('assets/images/mario.jpg') 
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row (
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    _buildStatColumn('200+', 'Connections'),
                                    _buildStatColumn('2.699', 'Followers'),
                                    _buildStatColumn('2.502', 'Following'),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    _buildButton('Connect', blue),
                                    _buildButton('Message', white, borderColor: blue),
                                  ],
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      //Nama dan deskripsi
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Muhammad Ridho Utomo',
                            style: bold14,
                          ),
                          const SizedBox(height: 1),
                          Text(
                            'Undergraduate Information System Student @ITS',
                            style: regular12.copyWith(color: gray2),
                          ),
                          const SizedBox(height: 1),
                          Text(
                            '5026231143  - Teknologi Berkembang (C)',
                            style: regular14,
                          ),
                          const SizedBox(height: 1),
                          Row(
                            children: [
                              // Image.asset('assets/icon/icon.png'),
                              Icon(Icons.link, color: gray2, size: 12),
                              const SizedBox(width: 8),
                              Text(
                                'linkedin.com/in/muhammadru',
                                style: regular12.copyWith(color: blue),
                                // textDirection: TextDecoration.underline,
                              ),
                            ],
                          )
                        ],
                      ),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _chip('Instagram'),
                          _chip('Facebook'),
                          _chip('LinkedIn'),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.75, color: gray1), 
                              borderRadius: BorderRadius.circular(24.0)),
                            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                            child: Image.asset('assets/icon/share.png', height: 15, width: 15),
                            
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 20),

              // Section Education
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), 
                    ),
                  ],
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Education', style: bold16),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox.fromSize(
                                  size: const Size.fromRadius(28), // Image radius
                                  child: Image.asset('assets/images/Logo ITS-Biru.png', fit: BoxFit.contain),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Institut Teknologi Sepuluh Nopember', style: medium14.copyWith(color: black)), 
                                    const SizedBox(height: 4),
                                    Text('Information Systems', style: regular14.copyWith(color: gray1)),
                                    const SizedBox(height: 4),
                                    Text('2023 - 2027 (Expected)', style: regular12.copyWith(color: gray2))
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                SizedBox.fromSize(
                                  size: const Size.fromRadius(28), // Image radius
                                  child: Image.asset('assets/images/logo-smasa.png', fit: BoxFit.contain),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('SMAN 1 SITUBONDO', style: medium14.copyWith(color: black)), 
                                    const SizedBox(height: 4),
                                    Text('SCIENCE', style: regular14.copyWith(color: gray1)),
                                    const SizedBox(height: 4),
                                    Text('2020 - 2023', style: regular12.copyWith(color: gray2))
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Section Funfact
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), 
                    ),
                  ],
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Funfact', style: bold16),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage('assets/images/begadang.png'),
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(width: 24),
                            Expanded(
                              child: Text(
                                'Kalau ngomong suka cepat kaya ninja.',
                                style: regular14,
                              ) 
                            ) 
                          ],
                        )
                      ],
                  ),
                ),
              ), 

              const SizedBox(height: 20),

            // Section Hobby
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), 
                    ),
                  ],
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Hoby', style: bold16),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage('assets/images/fotografi.png'),
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(width: 24),
                            Expanded(
                              child: Text(
                                'karena setiap moment harus diabadikan.',
                                style: regular14,
                              ) 
                            ) 
                          ],
                        )
                      ],
                  ),
                ),
              ), 

              const SizedBox(height: 20),


              // Section Gallery
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), 
                    ),
                  ],
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Gallery', style: bold16),
                          ],
                        ),
                        const SizedBox(height: 16),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(), 
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // jumlah kolom
                            crossAxisSpacing: 16, // space antar kolom
                            mainAxisSpacing: 16, // space antar baris
                          ),
                          shrinkWrap: true, // agar tidak penuh
                          itemCount: imageUrls.length,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(74),
                                child: Image.asset(
                                  imageUrls[index],
                                  fit: BoxFit.cover, // foto akan menyesuaikan ukuran grid
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                  ),
                ),
              ),
            
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildStatColumn(String value, String label) {
  return Column(
    children: [
      Text(
        value,
        style: bold16.copyWith(color: black),
      ),
      Text(
        label,
        style: regular10.copyWith(color: gray1),
      ),
    ],
  );
}

Widget _buildButton(String text, Color color, {Color borderColor = Colors.transparent}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      foregroundColor: color == Colors.white ? Colors.blue : Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16), // padding vertikal dan horizontal 
      minimumSize: const Size(0, 36), // set minimum size agar konsisten
      side: BorderSide(color: borderColor, width: 1), // ketebalan border outline
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
    ),
    child: Text(
      text,
      style: regular12.copyWith(color: color == Colors.white ? Colors.blue : Colors.white),
    ),
  );
}


Widget _chip(String text){
  return Container(
    decoration: BoxDecoration(
      border: Border.all(width: 0.75, color: gray1), // ketebalan outline dan warna
      borderRadius: BorderRadius.circular(24.0),
    ),
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12), // padding vertikal dan horizontal
    child: Text(
      text,
      style: regular14.copyWith(color: gray1), // style text
    ),
  );
}
