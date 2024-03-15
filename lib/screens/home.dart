import 'package:flutter/material.dart';
import '../utils/contato_repository.dart';
import '../models/contato_model.dart';
import '../widgets/list_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final listContatos = ContatoRepository.listContatos;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Chats',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset('assets/editicon.svg'))
          ],
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey[800],
            height: 0.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Broadcast Lists',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'New Group',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: listContatos.length,
              itemBuilder: (BuildContext context, int index) {
                ContatoModel contato = listContatos[index];
                return ListItemWidget(contato: contato);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      color: Colors.grey[800],
                      height: 0.3,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/statusicon.svg'),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/phoneicon.svg'),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/chatselected.svg'),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/settingsicon.svg'),
            label: 'Settings',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 24, 23, 23),
        iconSize: 30,
        unselectedFontSize: 13,
        selectedFontSize: 13,
        selectedItemColor: Colors.grey[600],
        unselectedItemColor: Colors.grey[600],
      ),
    );
  }
}
