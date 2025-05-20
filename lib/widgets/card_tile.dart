import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String type;
  final String number;
  final String image;
  final bool isSelected;
  final Function() onTap;

  const CardTile({
    required this.image,
    required this.number,
    required this.type,
    required this.onTap,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 358,
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade100 : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                image,
                height: 40,
                width: 55,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  number,
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
            
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
