import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/screens/second_screen.dart';
class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 66.0),
            // Şehir/İlçe Adı ve Güncellenme Tarihi
            Text(
              'Ankara/Keçiören',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text('Güncellenme Tarihi: 12 Kasım 2023'),

            // Hava Durumu
            // Burada internetten çekilen verilere göre hava durumu widget'ını ekleyebilirsiniz.
            SizedBox(height: 120.0),
            Container(
              child: const Icon(
                FontAwesomeIcons.cloudRain,
                size: 75.0,
                color: Colors.greenAccent,
              ),
            ),
            // Sıcaklık Bilgileri
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Derece Bilgisi
                Column(
                  children: [
                    Text(
                      '17°C', // Bu değeri internetten çekilen veriyle güncelleyin
                      style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                    ),
                    // Min ve Max Sıcaklık
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Min Sıcaklık
                        Text('Min: 11°C    ', style: TextStyle(fontSize: 16)),
                        // Max Sıcaklık
                        Text('   Max: 18°C',style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ],
            ),


            // Containerlar
            SizedBox(height: 170),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 110,
                  height: 80,
                  color: Color(0xFFEDEDED),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wb_sunny, size: 30, color: Colors.yellow),
                      Text(
                        'Gün Doğumu',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '07:31',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  height: 80,
                  color: Color(0xFFEDEDED),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wb_sunny, size: 30, color: Colors.orange),
                      Text(
                        'Gün Batımı',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '17:35',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  height: 80,
                  color: Color(0xFFEDEDED),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wind_power, size: 30, color: Colors.blueAccent),
                      Text(
                        'Rüzgar',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '8 km/s',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 110,
                  height: 80,
                  color: Color(0xFFEDEDED),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.compress_outlined, size: 30, color: Colors.blueGrey),
                      Text(
                        'Basınç',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '913,5',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  height: 80,
                  color: Color(0xFFEDEDED),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.water_drop, size: 30, color: Colors.blue),
                      Text(
                        'Basınç',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '%75',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  height: 80,
                  color: Color(0xFFEDEDED),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.credit_card, size: 50, color: Colors.white),
                        Text(
                          'RIFD',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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

void main() {
  runApp(MaterialApp(
    home: WeatherScreen(),
  ));
}
