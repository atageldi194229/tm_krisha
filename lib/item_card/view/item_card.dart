import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:tm_krisha/item/item.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.white,
      // Colors.purple.shade50,
      // Colors.orange.shade50,
      // Colors.green.shade50,
    ];

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            color: Colors.grey.shade400,
          )
        ],
      ),
      child: Material(
        color: colors[math.Random().nextInt(colors.length)],
        // elevation: 2,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(ItemPage.route());
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("8 900 000 TMT", style: TextStyle(fontSize: 20.0)),
                const Text("2-комнатная квартира, 50.8 м², 3/5 этаж", style: TextStyle(fontSize: 18.0, color: Colors.blue)),
                const SizedBox(height: 8.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                        child: Image.asset("assets/images/img1.jpg"),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Маметова 29/41 — Аблай Хана"),
                          Text("Алматы, Алмалинский р-н", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Material(
                  color: Colors.yellow[600],
                  borderRadius: BorderRadius.circular(8.0),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                    child: Text("Владелец недвижимости"),
                  ),
                ),
                const Divider(),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text("6 сентября", style: TextStyle(color: Colors.grey)),
                    const SizedBox(width: 16.0),
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                      size: 16.0,
                    ),
                    const Text(" 1943", style: TextStyle(color: Colors.grey)),
                    const Spacer(),
                    SizedBox(
                      width: 20.0,
                      height: 20.0,
                      child: IconButton.filled(
                        style: IconButton.styleFrom(backgroundColor: Colors.orange[500]),
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.paid,
                          size: 16.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: 20.0,
                      height: 20.0,
                      child: IconButton.filled(
                        style: IconButton.styleFrom(backgroundColor: Colors.red[500]),
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.local_fire_department_rounded,
                          size: 16.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: 20.0,
                      height: 20.0,
                      child: IconButton.filled(
                        style: IconButton.styleFrom(backgroundColor: Colors.green[500]),
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          // Icons.grade_rounded,
                          Icons.diamond_outlined,
                          size: 16.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
