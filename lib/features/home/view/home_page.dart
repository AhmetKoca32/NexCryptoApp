import 'package:flutter/material.dart';

// Coin modelini tanımlıyoruz (basit bir örnek)
class Coin {
  final String name;
  final String symbol;
  final double price;

  Coin({required this.name, required this.symbol, required this.price});
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Coin listesi
  final List<Coin> _coins = [
    Coin(name: 'Bitcoin', symbol: 'BTC', price: 45000.00),
    Coin(name: 'Ethereum', symbol: 'ETH', price: 3000.00),
    Coin(name: 'Ripple', symbol: 'XRP', price: 1.10),
    Coin(name: 'Litecoin', symbol: 'LTC', price: 150.00),
  ];

  // Özet bilgileri
  double get totalPortfolioValue {
    return _coins.fold(0.0, (sum, coin) => sum + coin.price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NexCrypto'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Özet Bilgiler
            Text(
              'Portföy Özetiniz',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Toplam Portföy Değeri: \$${totalPortfolioValue.toStringAsFixed(2)}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontStyle: FontStyle.italic,
                fontSize: 18,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),

            // Coin Listesi
            Text(
              'Coin Listesi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _coins.length,
                itemBuilder: (context, index) {
                  Coin coin = _coins[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    elevation: 3,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      title: Text(
                        coin.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        coin.symbol,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      trailing: Text(
                        '\$${coin.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
