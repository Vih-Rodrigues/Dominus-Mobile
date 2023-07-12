import 'package:flutter/material.dart';

class TelaMapa extends StatefulWidget {
  const TelaMapa({super.key, required this.title});

  final String title;

  @override
  State<TelaMapa> createState() => _TelaMapaState();
}

class _TelaMapaState extends State<TelaMapa> {
  bool aberto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert_sharp),
            onPressed:(){
              Navigator.pushNamed(context, '/avisos');
            },
          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                width: 200,
                height: 400,
                fit: BoxFit.contain,
              )
            ),
            ListTile(
              iconColor: Colors.black,
              textColor: Colors.black,
              leading: const Icon(
                  Icons.place
                ),
              title: const Text('Mapa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Colors.black,
              textColor: Colors.black,
              leading: const Icon(Icons.calendar_today),
              title: const Text('Calendário'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Colors.black,
              textColor: Colors.black,
              leading: const Icon(Icons.church),
              title: const Text('Igrejas'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Colors.black,
              textColor: Colors.black,
              leading: const Icon(Icons.book_rounded),
              title: const Text('Orações'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Colors.black,
              textColor: Colors.black,
              leading: const Icon(Icons.library_music_outlined),
              title: const Text('Canções'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // SizedBox(
            // height: double.infinity,
            // child: Image.network(
              // 'https://img-21.ccm2.net/vPBRurYXdU0_8Ga88fqesd1kvMg=/1179x/38f2435af3064dfa832864692c33a5a6/ccm-faq/maps1.JPG',
              // fit: BoxFit.cover,
            // ),
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 350,
              height: aberto ? 400 : 250, // aberto vai ter o tamanho de 400 e fechado 250
              child: Card(
                child: Column(
                  children: [
                    // Image.network(
                      // 'https://scontent.frao5-1.fna.fbcdn.net/v/t39.30808-6/277795498_7375066149202688_8126904613335076550_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=wnDjpHceFiUAX_L9boO&_nc_ht=scontent.frao5-1.fna&oh=00_AfC0MEBfGh1mWr9sGeEP2rq--I2ctmLEs99RALfJclJP4g&oe=64234847',
                      // fit: BoxFit.fitWidth,
                      // alignment: Alignment.bottomCenter,
                      // width: double.infinity,
                      // height: 170,
                    // ),

                    ExpansionTile(
                      onExpansionChanged: (value) => setState(() => aberto = value),

                      title: const Text(
                        'Paróquia Sagrada Família',
                        style: TextStyle(fontSize: 21, color: Colors.black)
                      ),

                      subtitle: Row(
                        children:
                          List.generate(
                            4, 
                            (_) => const Icon(Icons.star, size: 15, color: Colors.amber,)
                          ),
                      ),

                      children: [
                        SizedBox(
                          height: 150,
                          child: ListView(
                            children: const [
                              ListTile(
                                leading: Icon(Icons.map),
                                title: Text('R. Abílio Sampaio, 966 - Vila Virginia, Ribeirão Preto - SP, 14030-420'),
                              ),
                              ListTile(
                                leading: Icon(Icons.alarm),
                                title: Text('Seg - 8 AM | 8 PM\nTer  - 8 AM | 8 PM\nQua - 8 AM | 8 PM\nQui  - 8 AM | 8 PM\nSex  - 8 AM | 8 PM'),
                              ),
                              ListTile(
                                leading: Icon(Icons.phone),
                                title: Text('(16) 3621-0957'),
                              ),
                              ListTile(
                                leading: Icon(Icons.wechat_sharp),
                                title: Text('(16) 99122-5356'),
                              ),
                              ListTile(
                                leading: Icon(Icons.web),
                                title: Text('https://www.instagram.com/paroquia_sagrada_familia_rp/'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}