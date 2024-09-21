import 'package:flutter/material.dart';
import 'package:mapaulista/municipios.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

void _abrirLink() async {
  const url = 'https://whatsapp.com/channel/0029Vap5ukx9Bb67fCzfHu0S';
  if (await canLaunchUrl(Uri.parse(url))) {
    await canLaunchUrl(Uri.parse(url));
  }else{
    throw 'Could not launch $url';
  }
}
List<Municipios> municipios = [
  Municipios(
      'Santos',
      'Sul',
      'Santos, uma cidade costeira no estado de São Paulo, no sul do Brasil, é uma importante extensão do porto marítimo que vai do continente à ilha de São Vicente. O centro urbano da ilha faz fronteira com a Baía de Santos, conhecida pela sua extensa praia e pelo jardim adjacente de 5,3 km de comprimento. O Museu do Café, que ocupa uma bolsa de mercadorias de 1922 preservada na zona histórica, explora o papel fundamental da área para o comércio de café do Brasil.',
      'assets/img/santos.png',
      'assets/img/santos_second.png',
      '4.0/5'),
  Municipios(
      'São Sebastião', 'Norte', 'descricao', '#imagem1', '#imagem2', '4/5'),
  Municipios('Ilhabela', 'Norte', 'descricao', '#imagem1', '#imagem2', '4.5/5'),
  Municipios('Bertioga', 'Sul', 'descricao', '#imagem1', '#imagem2', '3.5/5'),
  Municipios(
      'Caraguatatuba', 'Norte', 'descricao', '#imagem1', '#imagem2', '3.5/5'),
  Municipios(
      'São Vicente', 'Sul', 'descricao', '#imagem1', '#imagem2', '3.5/5'),
  Municipios(
      'Praia Grande', 'Sul', 'descricao', '#imagem1', '#imagem2', '3.5/5'),
  Municipios('Mongaguá', 'Sul', 'descricao', '#imagem1', '#imagem2', '3/5'),
  Municipios('Peruíbe', 'Sul', 'descricao', '#imagem1', '#imagem2', '3.5/5'),
  Municipios('Iguape', 'Sul', 'descricao', '#imagem1', '#imagem2', '3.5/5'),
  Municipios(
      'Ilha Comprida', 'Sul', 'descricao', '#imagem1', '#imagem2', '3/5'),
  Municipios('Cananéia', 'Sul', 'descricao', '#imagem1', '#imagem2', '4/5'),
  Municipios('Guarujá', 'Sul', 'descricao', '#imagem1', '#imagem2', '4/5'),
  Municipios('Canção nova', 'Sul', 'descricao', '#imagem1', '#imagem2', '5/5'),
  Municipios('', '', 'descricao', '#imagem1', '#imagem2', '')
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lugares para Visitar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlacesToVisitScreen(),
    );
  }
}

class PlacesToVisitScreen extends StatelessWidget {
  final List<Map<String, String>> places = [
    {
      'nome': 'Santos',
      'avaliação': '4/5',
      'região': 'Sul',
      'image': 'assets/img/santos.png',
      'descrição':
          'Santos, uma cidade costeira no estado de São Paulo, no sul do Brasil, é uma importante extensão do porto marítimo que vai do continente à ilha de São Vicente. O centro urbano da ilha faz fronteira com a Baía de Santos, conhecida pela sua extensa praia e pelo jardim adjacente de 5,3 km de comprimento. O Museu do Café, que ocupa uma bolsa de mercadorias de 1922 preservada na zona histórica, explora o papel fundamental da área para o comércio de café do Brasil.',
      'second_image': 'assets/img/santos_second.png',
    },
    {
      'nome': 'Caraguatatuba',
      'avaliação': '3.5/5',
      'região': 'Norte',
    },
    {
      'nome': 'São Sebastião',
      'avaliação': '4/5',
      'região': 'Norte',
    },
    {
      'nome': 'Ilhabela',
      'avaliação': '4.5/5',
      'região': 'Norte',
    },
    {
      'nome': 'Bertioga',
      'avaliação': '3.5/5',
      'região': 'Sul',
    },
    {
      'nome': 'São Vicente',
      'avaliação': '3.5/5',
      'região': 'Sul',
    },
    {
      'nome': 'Praia Grande',
      'avaliação': '3.5/5',
      'região': 'Sul',
    },
    {
      'nome': 'Mongaguá',
      'avaliação': '3/5',
      'região': 'Sul',
    },
    {
      'nome': 'Peruíbe',
      'avaliação': '3.5/5',
      'região': 'Sul',
    },
    {
      'nome': 'Iguape',
      'avaliação': '3.5/5',
      'região': 'Sul',
    },
    {
      'nome': 'Ilha Comprida',
      'avaliação': '3/5',
      'região': 'Sul',
    },
    {
      'nome': 'Cananéia',
      'avaliação': '4/5',
      'região': 'Sul',
    },
    {
      'nome': 'Guarujá',
      'avaliação': '4/5',
      'região': 'Sul',
    },
    {'nome': 'Canção nova', 'avaliação': '5/5', 'região': 'Sul'},
  ];

  PlacesToVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                AssetImage('assets/img/profile.png'), // Imagem de perfil
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              // Ação do botão de configuração
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kinho',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Avaliação',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Nome',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Litoral',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                final place = places[index];
                return GestureDetector(
                  onTap: index == 0 // Apenas o primeiro item é funcional
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PlaceDetailScreen(place: place),
                            ),
                          );
                        }
                      : null,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Text(place['avaliação']!),
                            Text(municipios[index].avaliacao),
                            //Text(place['nome']!),
                            Text(municipios[index].nome),
                            //Text(place['região']!),
                            Text(municipios[index].regiao),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tela de início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Lugares',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Check list',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 1, // índice da aba selecionada (1 = 'Lugares')
        onTap: (index) {
          // ação ao tocar nas abas
        },
      ),
    );
  }
}

class PlaceDetailScreen extends StatelessWidget {
  final Map<String, String> place;

  const PlaceDetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(municipios[0].nome),
        backgroundColor: const Color.fromARGB(255, 115, 113, 113),
        elevation: 0,
      ),
      //a
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      municipios[0].nome,
                      style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'LeckerliOne'),
                    ),
                    const SizedBox(height: 16),
                    Image.asset(
                      municipios[0].imagem1,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      place['descrição']!,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Image.asset(
                      municipios[0].imagem2,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Ação do botão 'Ir ao Catálogo'
                      },
                      child: const Text('Ir ao Catálogo'),
                    ),
                    const SizedBox(
                      height: 8,
                      width: double.infinity,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Ação do botão 'Ir ao Mapa'
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 92, 170, 95),
                          textStyle: const TextStyle(
                            color: Colors.white, // Cor do texto
                            fontSize: 16.0, // Tamanho do texto
                          )),
                      child: const Text('Ir ao Mapa'),
                    ),
                    const ElevatedButton(onPressed: _abrirLink, child: Text('Canal de transmissão - WhatsApp'))
                  ],
                ),
              ),
            ],
          ),
          
        ),
        
      ),
      
      backgroundColor: const Color.fromARGB(255, 1, 23, 73),
      
    );
  }
}
