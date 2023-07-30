import 'package:flutter/material.dart';
import '/mybuttons.dart';
import 'mylist_tile.dart';
import './cards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: const Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: const Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const [
                  Cards(
                    balance: 525.20,
                    cardNumber: 23456,
                    expiryMonth: 03,
                    expiryYear: 2023,
                    color: Colors.blue,
                  ),
                  Cards(
                    balance: 525.20,
                    cardNumber: 23456,
                    expiryMonth: 03,
                    expiryYear: 2023,
                    color: Colors.purple,
                  ),
                  Cards(
                    balance: 525.20,
                    cardNumber: 23456,
                    expiryMonth: 03,
                    expiryYear: 2023,
                    color: Colors.green,
                  ),
                ],
              ),
              
            ),
            SizedBox(height: 15,),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myCards(
                      buttonText: 'Send',
                      iconImagePath: 'assets/fonts/send-money.png'),
                  myCards(
                      buttonText: 'Pay',
                      iconImagePath: 'assets/fonts/credit-card.png'),
                  myCards(
                      buttonText: 'Bills',
                      iconImagePath: 'assets/fonts/budget.png'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyListTile(
                    iconImagePath: 'assets/fonts/statistics.png',
                    tileSubTitle: 'Payment and Income',
                    tileTitle: 'Statistics',
                  ),
                  MyListTile(
                    iconImagePath: 'assets/fonts/transaction.png',
                    tileSubTitle: 'Transaction History',
                    tileTitle: 'Transaction',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
