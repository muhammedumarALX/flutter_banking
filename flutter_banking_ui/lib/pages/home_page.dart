import 'package:flutter/material.dart';
import 'package:flutter_banking_ui/util/card.dart';
import 'package:flutter_banking_ui/util/my_button.dart';
import 'package:flutter_banking_ui/util/my_listtile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  // Page Controller
  final _myController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 32,
                    color: Colors.pink[200],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 32,
                    color: Colors.grey[400],
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My ",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Cards",
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //cards
            Container(
              height: 200,
              child: PageView(
                controller: _myController,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    balance: 45000.89,
                    cardNumber: 1234856890,
                    color: const Color.fromARGB(255, 149, 117, 205),
                    expiryMonth: 5,
                    expiryYear: 27,
                  ),
                  MyCard(
                    balance: 300450.00,
                    cardNumber: 1234856890,
                    color: const Color.fromARGB(255, 100, 181, 246),
                    expiryMonth: 5,
                    expiryYear: 27,
                  ),
                  MyCard(
                    balance: 150000.42,
                    cardNumber: 1234856890,
                    color: const Color.fromARGB(255, 129, 199, 132),
                    expiryMonth: 5,
                    expiryYear: 27,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            SmoothPageIndicator(
              controller: _myController,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),

            SizedBox(
              height: 25,
            ),
            // 3 buttons => send + pay + bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      iconImagePath: "lib/icons/send-money.png",
                      buttonText: "Send",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/credit-card.png",
                      buttonText: "Pay",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/bill.png",
                      buttonText: "Bills",
                    )
                  ]),
            ),
            SizedBox(
              height: 40,
            ),
            // column => stats + transaction
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  MyListTile(
                    iconImagePath: "lib/icons/analysis.png",
                    tileTitle: "Statistics",
                    tileSubtile: "Payments and Incomes",
                  ),
                  MyListTile(
                    iconImagePath: "lib/icons/transaction.png",
                    tileTitle: "Transactions",
                    tileSubtile: "Transaction History",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
