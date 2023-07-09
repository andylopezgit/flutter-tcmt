import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 1;
  final PageController pageController = new PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('TCMT $currentPage'),
        elevation: 1,
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          MyWidget(
            color: Color.fromARGB(255, 198, 216, 235),
            text: Text('Acciones', style: TextStyle(fontSize: 24)),
          ),
          MyWidget(
            color: Color.fromARGB(255, 242, 200, 200),
            text: Text('Tareas', style: TextStyle(fontSize: 24)),
          ),
          MyWidget(
            color: Color.fromARGB(255, 196, 230, 197),
            text: Text('Observaciones', style: TextStyle(fontSize: 24)),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;

          pageController.animateToPage(index,
              duration: const Duration(seconds: 3), curve: Curves.elasticOut);

          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check), label: 'Tareas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_rounded), label: 'Acciones'),
          BottomNavigationBarItem(
              icon: Icon(Icons.visibility), label: 'Observaciones')
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final Color color;
  final Text text;

  const MyWidget({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(color: color, child: Center(child: text));
  }
}
