import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/task_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/todo.dart';
import '../constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Статистика и профиль",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        children: [
          Center(
            child: Text(
              'Хахук Рустам Нальбиевич',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Container(
                height: 260,
                width: 260,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color(0x1A000000),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: Color(0xFF2C3542),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '25 июня',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: const Color(0xFF2C3542),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF6BD16),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'В процессе - 35%',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: const Color(0xD92C3542),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 6,
                          height: 6,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF78A844),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Выполнено - 65%',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: const Color(0xD92C3542),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          '65',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 21,
                            color: const Color(0xD92C3542),
                          ),
                        ),
                        const SizedBox(
                          height: 125,
                          width: 125,
                          child: CircularProgressIndicator(
                            strokeWidth: 30,
                            value: 0.65,
                            color: Color(0xFF78A844),
                            backgroundColor: Color(0xFFF6BD16),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 260,
                width: 105,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color(0x1A000000),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(
                        width: 88,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0EEEE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.account_box_sharp,
                          size: 50,
                        ),
                      ),
                    ),
                    Text(
                      'Данные...',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: const Color(0xFF979797),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Изменить',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  color: Color(0x1A000000),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'График работы',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: const Color(0xFF2C3542),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 245 + 40 * 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: Text(
                                  'Пн',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF4CAF50),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: Text(
                                  'Вт',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF4CAF50),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: Text(
                                  'Ср',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF4CAF50),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: Text(
                                  'Чт',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF4CAF50),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: Text(
                                  'Пт',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF4CAF50),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: Text(
                                  'Сб',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF4CAF50),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: Text(
                                  'Вс',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF4CAF50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0; i < 7; i++)
                                Container(
                                  width: 40,
                                  height: 40,
                                  color: 19 + i >= DateTime.now().day
                                      ? const Color(0xFFB9EB84)
                                      : const Color(0xFFA7A9B6),
                                  child: Center(
                                    child: Text(
                                      (19 + i).toString(),
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color(0xFF484848),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0; i < 7; i++)
                                Container(
                                  width: 40,
                                  height: 40,
                                  color: Random().nextInt(100) < 30
                                      ? const Color(0xFF729E43)
                                      : const Color(0xFFB9EB84),
                                  child: Center(
                                    child: Text(
                                      (19 + i).toString(),
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color(0xFF484848),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0; i < 7; i++)
                                Container(
                                  width: 40,
                                  height: 40,
                                  color: Random().nextInt(100) < 30
                                      ? const Color(0xFF729E43)
                                      : const Color(0xFFB9EB84),
                                  child: Center(
                                    child: Text(
                                      (19 + i).toString(),
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color(0xFF484848),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0; i < 7; i++)
                                Container(
                                  width: 40,
                                  height: 40,
                                  color: Random().nextInt(100) < 30
                                      ? const Color(0xFF729E43)
                                      : const Color(0xFFB9EB84),
                                  child: Center(
                                    child: Text(
                                      (19 + i).toString(),
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color(0xFF484848),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => TaskDetailPage(
            task: todo,
          ),
        ),
      );
    });
  }
}
