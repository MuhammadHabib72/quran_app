import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:csv/csv.dart';

class Reading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(229, 182, 242, 1), // Background color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 40), // Spacing from top
              const Text(
                'Quran',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(48, 7, 89, 1),
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true, // Always show the scroll indicator
                  thickness: 7.0, // Thickness of the scroll indicator
                  radius: const Radius.circular(20.0), // Rounded edges
                  child: ListView(
                    children: [
                      _buildQuranRow('Yasin', 36, 'Words of God', context),
                      _buildQuranRow('Al-Fatihah', 1, 'The Opener', context),
                      _buildQuranRow('Al-Baqara', 2, 'The Cow', context),
                      _buildQuranRow(
                          'Al-Imran', 3, 'The Family Of Imran', context),
                      _buildQuranRow('An-Nisa', 4, 'The Woman', context),
                      _buildQuranRow(
                          'Al-Maidah', 5, 'The Table Spread', context),
                      _buildQuranRow('Al-An\'am', 6, 'The Cattle', context),
                      _buildQuranRow('Al-A\'raf', 7, 'The Heights', context),
                      _buildQuranRow(
                          'Al-Anfal', 8, 'The Spoils of War', context),
                      _buildQuranRow('At-Tawbah', 9, 'The Repentance', context),
                      _buildQuranRow('Yunus', 10, 'Jonah', context),
                      _buildQuranRow('Hud', 11, 'Hud', context),
                      _buildQuranRow('Yusuf', 12, 'Joseph', context),
                      _buildQuranRow('Ar-Ra\'d', 13, 'The Thunder', context),
                      _buildQuranRow('Ibrahim', 14, 'Abraham', context),
                      _buildQuranRow('Al-Hijr', 15, 'The Rocky Tract', context),
                      _buildQuranRow('An-Nahl', 16, 'The Bee', context),
                      _buildQuranRow(
                          'Al-Isra', 17, 'The Night Journey', context),
                      _buildQuranRow('Al-Kahf', 18, 'The Cave', context),
                      _buildQuranRow('Maryam', 19, 'Mary', context),
                      _buildQuranRow('Ta-Ha', 20, 'Ta-Ha', context),
                      _buildQuranRow('Al-Anbiya', 21, 'The Prophets', context),
                      _buildQuranRow('Al-Hajj', 22, 'The Pilgrimage', context),
                      _buildQuranRow(
                          'Al-Mu\'minun', 23, 'The Believers', context),
                      _buildQuranRow('An-Nur', 24, 'The Light', context),
                      _buildQuranRow('Al-Furqan', 25, 'The Criterion', context),
                      _buildQuranRow('Ash-Shu\'ara', 26, 'The Poets', context),
                      _buildQuranRow('An-Naml', 27, 'The Ant', context),
                      _buildQuranRow('Al-Qasas', 28, 'The Stories', context),
                      _buildQuranRow('Al-Ankabut', 29, 'The Spider', context),
                      _buildQuranRow('Ar-Rum', 30, 'The Romans', context),
                      _buildQuranRow('Luqman', 31, 'Luqman', context),
                      _buildQuranRow(
                          'As-Sajda', 32, 'The Prostration', context),
                      _buildQuranRow(
                          'Al-Ahzab', 33, 'The Combined Forces', context),
                      _buildQuranRow('Saba', 34, 'Sheba', context),
                      _buildQuranRow('Fatir', 35, 'The Originator', context),
                      _buildQuranRow('Ya-Sin', 36, 'Ya-Sin', context),
                      _buildQuranRow(
                          'As-Saffat', 37, 'Those who set the Ranks', context),
                      _buildQuranRow('Sad', 38, 'The Letter Sad', context),
                      _buildQuranRow('Az-Zumar', 39, 'The Groups', context),
                      _buildQuranRow('Ghafir', 40, 'The Forgiver', context),
                      _buildQuranRow(
                          'Fussilat', 41, 'Explained in Detail', context),
                      _buildQuranRow(
                          'Ash-Shura', 42, 'The Consultation', context),
                      _buildQuranRow(
                          'Az-Zukhruf', 43, 'The Gold Adornments', context),
                      _buildQuranRow('Ad-Dukhan', 44, 'The Smoke', context),
                      _buildQuranRow(
                          'Al-Jathiyah', 45, 'The Crouching', context),
                      _buildQuranRow(
                          'Al-Ahqaf', 46, 'The Wind-Curved Sandhills', context),
                      _buildQuranRow('Muhammad', 47, 'Muhammad', context),
                      _buildQuranRow('Al-Fath', 48, 'The Victory', context),
                      _buildQuranRow('Al-Hujurat', 49, 'The Rooms', context),
                      _buildQuranRow('Qaf', 50, 'The Letter Qaf', context),
                      _buildQuranRow(
                          'Adh-Dhariyat', 51, 'The Winnowing Winds', context),
                      _buildQuranRow('At-Tur', 52, 'The Mount', context),
                      _buildQuranRow('An-Najm', 53, 'The Star', context),
                      _buildQuranRow('Al-Qamar', 54, 'The Moon', context),
                      _buildQuranRow(
                          'Ar-Rahman', 55, 'The Beneficent', context),
                      _buildQuranRow(
                          'Al-Waqi\'ah', 56, 'The Inevitable', context),
                      _buildQuranRow('Al-Hadid', 57, 'The Iron', context),
                      _buildQuranRow(
                          'Al-Mujadila', 58, 'The Pleading Woman', context),
                      _buildQuranRow('Al-Hashr', 59, 'The Exile', context),
                      _buildQuranRow('Al-Mumtahina', 60,
                          'She that is to be examined', context),
                      _buildQuranRow('As-Saff', 61, 'The Ranks', context),
                      _buildQuranRow('Al-Jumu\'ah', 62,
                          'The Congregation, Friday', context),
                      _buildQuranRow(
                          'Al-Munafiqun', 63, 'The Hypocrites', context),
                      _buildQuranRow(
                          'At-Taghabun', 64, 'The Mutual Disillusion', context),
                      _buildQuranRow('At-Talaq', 65, 'The Divorce', context),
                      _buildQuranRow(
                          'At-Tahrim', 66, 'The Prohibition', context),
                      _buildQuranRow('Al-Mulk', 67, 'The Sovereignty', context),
                      _buildQuranRow('Al-Qalam', 68, 'The Pen', context),
                      _buildQuranRow('Al-Haqqah', 69, 'The Reality', context),
                      _buildQuranRow('Al-Ma\'arij', 70,
                          'The Ascending Stairways', context),
                      _buildQuranRow('Nuh', 71, 'Noah', context),
                      _buildQuranRow('Al-Jinn', 72, 'The Jinn', context),
                      _buildQuranRow(
                          'Al-Muzzammil', 73, 'The Enshrouded One', context),
                      _buildQuranRow(
                          'Al-Muddathir', 74, 'The Cloaked One', context),
                      _buildQuranRow(
                          'Al-Qiyamah', 75, 'The Resurrection', context),
                      _buildQuranRow('Al-Insan', 76, 'Man', context),
                      _buildQuranRow(
                          'Al-Mursalat', 77, 'The Emissaries', context),
                      _buildQuranRow('An-Naba', 78, 'The Tidings', context),
                      _buildQuranRow(
                          'An-Nazi\'at', 79, 'Those who drag forth', context),
                      _buildQuranRow('Abasa', 80, 'He frowned', context),
                      _buildQuranRow(
                          'At-Takwir', 81, 'The Overthrowing', context),
                      _buildQuranRow('Al-Infitar', 82, 'The Cleaving', context),
                      _buildQuranRow(
                          'Al-Mutaffifin', 83, 'Defrauding', context),
                      _buildQuranRow(
                          'Al-Inshiqaq', 84, 'The Splitting Open', context),
                      _buildQuranRow(
                          'Al-Buruj', 85, 'The Mansions of the Stars', context),
                      _buildQuranRow(
                          'At-Tariq', 86, 'The Morning Star', context),
                      _buildQuranRow('Al-A\'la', 87, 'The Most High', context),
                      _buildQuranRow(
                          'Al-Ghashiyah', 88, 'The Overwhelming', context),
                      _buildQuranRow('Al-Fajr', 89, 'The Dawn', context),
                      _buildQuranRow('Al-Balad', 90, 'The City', context),
                      _buildQuranRow('Ash-Shams', 91, 'The Sun', context),
                      _buildQuranRow('Al-Lail', 92, 'The Night', context),
                      _buildQuranRow(
                          'Ad-Duha', 93, 'The Morning Hours', context),
                      _buildQuranRow('Ash-Sharh', 94, 'The Relief', context),
                      _buildQuranRow('At-Tin', 95, 'The Fig', context),
                      _buildQuranRow('Al-Alaq', 96, 'The Clot', context),
                      _buildQuranRow('Al-Qadr', 97, 'The Power', context),
                      _buildQuranRow(
                          'Al-Bayyina', 98, 'The Clear Proof', context),
                      _buildQuranRow(
                          'Az-Zalzalah', 99, 'The Earthquake', context),
                      _buildQuranRow('Al-Adiyat', 100, 'The Courser', context),
                      _buildQuranRow(
                          'Al-Qari\'ah', 101, 'The Calamity', context),
                      _buildQuranRow('At-Takathur', 102,
                          'The Rivalry in World Increase', context),
                      _buildQuranRow(
                          'Al-Asr', 103, 'The Declining Day', context),
                      _buildQuranRow('Al-Humaza', 104, 'The Traducer', context),
                      _buildQuranRow('Al-Fil', 105, 'The Elephant', context),
                      _buildQuranRow('Quraish', 106, 'Quraish', context),
                      _buildQuranRow(
                          'Al-Ma\'un', 107, 'The Small Kindnesses', context),
                      _buildQuranRow(
                          'Al-Kawthar', 108, 'The Abundance', context),
                      _buildQuranRow(
                          'Al-Kafirun', 109, 'The Disbelievers', context),
                      _buildQuranRow(
                          'An-Nasr', 110, 'The Divine Support', context),
                      _buildQuranRow(
                          'Al-Masad', 111, 'The Palm Fibre', context),
                      _buildQuranRow(
                          'Al-Ikhlas', 112, 'The Sincerity', context),
                      _buildQuranRow('Al-Falaq', 113, 'The Daybreak', context),
                      _buildQuranRow('An-Nas', 114, 'The Mankind', context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuranRow(
      String title, int number, String translation, BuildContext context) {
    return InkWell(
      onTap: () async {
        final yasinText = await loadCSVData();
        if (yasinText.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SurahDetailPage(surahText: yasinText),
            ),
          );
        } else {
          print('Error loading CSV or CSV is empty');
        }
      },
      child: ListTile(
        title: Text(
          '$title ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color.fromRGBO(48, 7, 89, 1),
          ),
        ),
        subtitle: Text(
          translation,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color.fromRGBO(157, 29, 242, 1),
          ),
        ),
        trailing: Wrap(
          children: [
            RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(157, 29, 242, 1)),
                    children: [
                  TextSpan(text: 'Chapter '),
                  TextSpan(text: '$number'),
                ])),
          ],
        ),
      ),
    );
  }

  Future<List<String>> loadCSVData() async {
    try {
      final data = await rootBundle.loadString('assets/yaseen.csv');
      if (data.isEmpty) {
        print('The CSV file is empty!');
        return [];
      }
      final csvTable = CsvToListConverter().convert(data);
      return csvTable.map((row) => row[0].toString()).toList();
    } catch (e) {
      print('Error loading CSV: $e');
      return [];
    }
  }
}

class SurahDetailPage extends StatelessWidget {
  final List<String> surahText;

  const SurahDetailPage({Key? key, required this.surahText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Quran',
          style: TextStyle(
            fontFamily: "Arial",
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: const Color.fromRGBO(141, 59, 223, 1),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    style: TextStyle(fontFamily: "Arial", color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Yasin\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromRGBO(48, 7, 89, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'Verse 36\n(Words Of God)\n\n',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(157, 29, 242, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ListView.builder(
                      itemCount: surahText.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Text(
                            surahText[index],
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(48, 7, 89, 1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(
                    141, 59, 223, 0.975), // Background color for the circle
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(31, 255, 255, 255),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.menu_book, color: Colors.white),
                onPressed: () {},
                iconSize: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(
                    141, 59, 223, 0.975), // Background color for the circle
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.play_arrow, color: Colors.white),
                onPressed: () {},
                iconSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
