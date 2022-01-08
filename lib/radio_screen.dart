import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  _RadioScreenState createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/genre': (context) => const SecondScreen(),
        '/mood': (context) => const ThirdScreen(),
        '/exercise': (context) => const FourthScreen(),
        '/epoch': (context) => const FifthScreen(),
        '/authors': (context) => const SixthScreen(),
        '/musicofcitios': (context) => const SeventhScreen(),
        '/personal': (context) => const EighthScreen(),
      },
    );
  }
}

Widget navDrawer (context) => Drawer(
  child: ListView(padding: EdgeInsets.zero,
    children: [
      DrawerHeader(decoration: const BoxDecoration(color: Colors.white70),
        child: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage("assets/radio.png"),
                      fit: BoxFit.cover,
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.account_circle_outlined),
        title: const Text('Моя волна'),
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      ListTile(
        leading: const Icon(Icons.animation),
        title: const Text('Жанр'),
        onTap: () {
          Navigator.pushNamed(context, '/genre');
        },
      ),
      ListTile(
        leading: const Icon(Icons.accessibility_new),
        title: const Text('Настроение'),
        onTap: () {
          Navigator.pushNamed(context, '/mood');
        },
      ),
      ListTile(
        leading: const Icon(Icons.agriculture_outlined),
        title: const Text('Занятие'),
        onTap: () {
          Navigator.pushNamed(context, '/exercise');
        },
      ),
      ListTile(
        leading: const Icon(Icons.whatshot_rounded),
        title: const Text('Эпоха'),
        onTap: () {
          Navigator.pushNamed(context, '/epoch');
        },
      ),
      ListTile(
        leading: const Icon(Icons.accessibility_new),
        title: const Text('Авторы'),
        onTap: () {
          Navigator.pushNamed(context, '/authors');
        },
      ),
      ListTile(
        leading: const Icon(Icons.apartment_rounded),
        title: const Text('Музыка городов'),
        onTap: () {
          Navigator.pushNamed(context, '/musicofcitios');
        },
      ),
      ListTile(
        leading: const Icon(Icons.accessibility_new),
        title: const Text('Персональное'),
        onTap: () {
          Navigator.pushNamed(context, '/personal');
        },
      ),
    ],),
);

Widget bottomNavigationBar (context) => BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Моя волна',
      backgroundColor: Colors.blue,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.access_time),
      label: 'Таймер сна',
      backgroundColor: Colors.lightGreen,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.attach_email_rounded),
      label: 'Обратная связь',
      backgroundColor: Colors.deepPurpleAccent,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.book_outlined),
      label: 'О приложении',
      backgroundColor: Colors.purpleAccent,
    ),
  ],
  selectedItemColor: Colors.yellowAccent,
);


class MainScreen extends StatelessWidget{
  const MainScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Моя волна'),
        actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
      ],),
      drawer: navDrawer(context),
      bottomNavigationBar: bottomNavigationBar (context),
      body: const Center(
        child: Text('Моя волна',
          style: TextStyle(fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue),),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  const SecondScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Жанр')),
      drawer: navDrawer(context),
      body: Center(
          child: Container(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ListTile (
                 leading: Icon(Icons.animation),
                 title: Text('Поп'),
                ),
                ListTile(
                  leading: Icon(Icons.animation),
                  title: Text('Рок'),
            ),
                ListTile(
                  leading: Icon(Icons.animation),
                  title: Text('Инди'),
                ),
                ListTile(
                  leading: Icon(Icons.animation),
                  title: Text('Метал'),
                ),
                ListTile(
                  leading: Icon(Icons.animation),
                  title: Text('Альтернатива'),
                ),
                ListTile(
                  leading: Icon(Icons.animation),
                  title: Text('Танцевальная музыка'),
                ),
                ListTile(
                  leading: Icon(Icons.animation),
                  title: Text("R'n'B"),
                ),
                ListTile(
                  leading: Icon(Icons.animation),
                  title: Text("Джаз"),
                ),
                ListTile(
                  leading: Icon(Icons.animation),
                  title: Text("Классическая музыка"),
                ),
        ]),
          ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget{
  const ThirdScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настроение')),
      drawer: navDrawer(context),
      body: Center(
        child: Container(
          child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ListTile (
                  leading: Icon(Icons.accessibility_new),
                  title: Text('Весеннее'),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text('Грустное'),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text('Дождь за окном'),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text('Метал'),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text('Зимнее'),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text('Шуточное'),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text("Летнее"),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text("Мечтательное"),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text("Новогоднее"),
                ),
              ]),
        ),
      ),
    );
  }
}

class FourthScreen extends StatelessWidget{
  const FourthScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Занятие')),
      drawer: navDrawer(context),
      body: Center(
        child: Container(
          child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ListTile (
                  leading: Icon(Icons.access_alarms_outlined),
                  title: Text('Проснуться'),
                ),
                ListTile(
                  leading: Icon(Icons.assistant_photo),
                  title: Text('Бег'),
                ),
                ListTile(
                  leading: Icon(Icons.assistant_photo),
                  title: Text('Тренировка'),
                ),
                ListTile(
                  leading: Icon(Icons.agriculture_outlined),
                  title: Text('За рулём'),
                ),
                ListTile(
                  leading: Icon(Icons.airplanemode_active_sharp),
                  title: Text('Путешествие'),
                ),
                ListTile(
                  leading: Icon(Icons.volunteer_activism),
                  title: Text('Фоновая музыка'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text("Вечеринка"),
                ),
                ListTile(
                  leading: Icon(Icons.volunteer_activism),
                  title: Text("Свидание"),
                ),
                ListTile(
                  leading: Icon(Icons.volunteer_activism),
                  title: Text("Для влюблённых"),
                ),
              ]),
        ),
      ),
    );
  }
}

class FifthScreen extends StatelessWidget{
  const FifthScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Эпоха')),
      drawer: navDrawer(context),
      body: Center(
        child: Container(
          child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ListTile (
                  leading: Icon(Icons.whatshot_rounded),
                  title: Text('Вечные хиты'),
                ),
                ListTile(
                  leading: Icon(Icons.whatshot_rounded),
                  title: Text('1950-е'),
                ),
                ListTile(
                  leading: Icon(Icons.whatshot_rounded),
                  title: Text('1960-е'),
                ),
                ListTile(
                  leading: Icon(Icons.whatshot_rounded),
                  title: Text('1970-е'),
                ),
                ListTile(
                  leading: Icon(Icons.whatshot_rounded),
                  title: Text('1980-е'),
                ),
                ListTile(
                  leading: Icon(Icons.whatshot_rounded),
                  title: Text('1990-е'),
                ),
                ListTile(
                  leading: Icon(Icons.whatshot_rounded),
                  title: Text("2000-е"),
                ),
                ListTile(
                  leading: Icon(Icons.whatshot_rounded),
                  title: Text("2010-е"),
                ),
              ]),
        ),
      ),
    );
  }
}

class SixthScreen extends StatelessWidget{
  const SixthScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Авторы')),
      drawer: navDrawer(context),
      body: Center(
        child: Container(
          child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ListTile (
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('Rolling Stone'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('THT MUSIC'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('Александр Плющев'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('Доброфест'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('Interview Russia'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('modernrock'),
                ),
              ]),
        ),
      ),
    );
  }
}

class SeventhScreen extends StatelessWidget{
  const SeventhScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Музыка городов')),
      drawer: navDrawer(context),
      body: Center(
        child: Container(
          child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ListTile (
                  leading: Icon(Icons.apartment_rounded),
                  title: Text('Популярно в Москве'),
                ),
                ListTile(
                  leading: Icon(Icons.apartment_rounded),
                  title: Text('Популярно в Санкт-Петербурге'),
                ),
                ListTile(
                  leading: Icon(Icons.apartment_rounded),
                  title: Text('Популярно в Новосибирске'),
                ),
                ListTile(
                  leading: Icon(Icons.apartment_rounded),
                  title: Text('Популярно в Екатеринбурге'),
                ),
                ListTile(
                  leading: Icon(Icons.apartment_rounded),
                  title: Text('Популярно в Ростове-на-Дону'),
                ),
              ]),
        ),
      ),
    );
  }
}

class EighthScreen extends StatelessWidget{
  const EighthScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Персональные')),
      drawer: navDrawer(context),
      body: Center(
        child: Container(
          child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ListTile (
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('Новое'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('Забытое'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('Популярное'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_sharp),
                  title: Text('Музыка x Разговоры'),
                ),
              ]),
        ),
      ),
    );
  }
}

